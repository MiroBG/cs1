resource "aws_instance" "web" {
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  key_name                    = var.ec2_key_name
  subnet_id                   = var.ec2_subnet_id
  vpc_security_group_ids      = var.ec2_security_group_ids
  associate_public_ip_address = false
  user_data_replace_on_change = true

  user_data = <<-EOF
    #!/bin/bash
    set -eux

    NODE_EXPORTER_VERSION="1.8.2"
    NODE_EXPORTER_ARCHIVE="node_exporter-$${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz"
    NODE_EXPORTER_DIR="node_exporter-$${NODE_EXPORTER_VERSION}.linux-amd64"

    if command -v dnf >/dev/null 2>&1; then
      dnf update -y
      dnf install -y curl-minimal tar || dnf install -y curl tar
      dnf install -y node_exporter || true
    elif command -v apt-get >/dev/null 2>&1; then
      export DEBIAN_FRONTEND=noninteractive
      apt-get update -y
      apt-get install -y curl tar
      apt-get install -y prometheus-node-exporter || true
    fi

    useradd --no-create-home --shell /usr/sbin/nologin node_exporter || true

    if ! command -v node_exporter >/dev/null 2>&1; then
      curl -fsSL "https://github.com/prometheus/node_exporter/releases/download/v$${NODE_EXPORTER_VERSION}/$${NODE_EXPORTER_ARCHIVE}" -o "/tmp/$${NODE_EXPORTER_ARCHIVE}"
      tar -xzf "/tmp/$${NODE_EXPORTER_ARCHIVE}" -C /tmp
      install -m 0755 "/tmp/$${NODE_EXPORTER_DIR}/node_exporter" /usr/local/bin/node_exporter
    fi

    NODE_EXPORTER_BIN="$(command -v node_exporter || true)"
    if [ -n "$${NODE_EXPORTER_BIN}" ] && [ "$${NODE_EXPORTER_BIN}" != "/usr/local/bin/node_exporter" ]; then
      install -m 0755 "$${NODE_EXPORTER_BIN}" /usr/local/bin/node_exporter
    fi

    cat > /etc/systemd/system/node_exporter.service <<'SERVICE'
    [Unit]
    Description=Prometheus Node Exporter
    Wants=network-online.target
    After=network-online.target

    [Service]
    User=node_exporter
    Group=node_exporter
    Type=simple
    ExecStart=/usr/local/bin/node_exporter --web.listen-address=:9100
    Restart=on-failure

    [Install]
    WantedBy=multi-user.target
    SERVICE

    systemctl daemon-reload
    systemctl enable --now node_exporter
  EOF

  tags = {
    Name = var.ec2_name
  }
}
