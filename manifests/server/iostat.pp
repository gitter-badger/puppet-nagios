class nagios::server::iostat {
  
  require nagios::server::config
  include nagios::server::service
  
    Datacat_fragment <<| tag == "iostat${environment}" |>> {
    }
    
    datacat { '/tmp/test.cfg':
			template => "${module_name}/hostgroups.cfg.erb",
}
    
    
}