resource "aws_route_table" "rt_desafio" {
  vpc_id = aws_vpc.vpc_desafio.id

  route = [ 
      {
        carrier_gateway_id = ""
        cidr_block = "0.0.0.0/0"
        destination_prefix_list_id = ""
        egress_only_gateway_id = ""
        gateway_id = aws_internet_gateway.ig.id
        instance_id = ""
        ipv6_cidr_block = ""
        local_gateway_id = ""
        nat_gateway_id = ""
        network_interface_id = ""
        transit_gateway_id = ""
        vpc_endpoint_id = ""
        vpc_peering_connection_id = ""
    } 
  ]
}