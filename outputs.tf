output "private_ip"  { value = "${module.openvpn.private_ip}" }
output "public_ip"   { value = "${module.openvpn.public_ip}" }
output "ssh_private_key" { 
  value = "${module.openvpn.ssh_private_key}"
  sensitive = true
}
