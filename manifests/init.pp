# @summary my nginix manifest
#
#   include nginx
class nginx(
	String $install_name,
	String $install_ensure,
	String $config_ensure,
	String $config_path,
	String $ensure_running,
) {
	contain nginx::install
	contain nginx::config

	Class['::nginx::install']
	->Class['::nginx::config']
}
