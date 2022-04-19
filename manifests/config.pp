# @summary Nginx for ModSecurity
#
# A description of what this class does
#
# @example
#   include nginx::config
class nginx::config {
	file{'/etc/nginx/nginx.conf':
	ensure => $nginx::config_esure,
	path   => $nginx::config_path,
	source => "puppet:///modules/nginx/nginx.conf",
	mode   => '0644',
	owner  => 'root',
	group  => 'root',

}
}
