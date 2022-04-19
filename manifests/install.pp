# @summary   Installs the nginx packege.
#
# @example
#   include nginx::install
class nginx::install { 
	package {'nginx':
		name =>   $nginx::install_name,
		ensure => $nginx::install_ensure,
	}
	service {'nginx':
                name =>   $nginx::install_name,
		ensure => $nginx::ensure_running,
	}

}
