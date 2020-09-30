class tomcat(
   $user = $tomcat::params::user,
   $group = $tomcat::params::group,
   $config_path = $tomcat::params::config_path,
   $packages = $tomcat::params::packages,
   $service_name= $tomcat::params::service_name,
   $service_state = $tomcat::params::service_state,
   $catalina_pid = $tomcat::params::catalina_pid,
   $shutdown_verbose = $tomcat::params::shutdown_verbose,
   $shutdown_wait = $tomcat::params::shutdown_wait,
   $security_manager = $tomcat::params::security_manager,
   $catalina_tmpdir= $tomcat::params::catalina_tmpdir,
   $jasper_home = $tomcat::params::jasper_home,
   $catalina_home = $tomcat::params::catalina_home,
   $catalina_base = $tomcat::params::catalina_base,
   $java_home = $tomcat::params::java_home,
   $java_opts = $tomcat::params::java_opts,
   $tomcat_cfg_loaded = $tomcat::params::tomcat_cfg_loaded,
   $xms = $tomcat::params::xms,
   $xmx = $tomcat::params::xmx,
   $maxpermsize = $tomcat::params::maxpermsize
   
  )inherits tomcat::params{
  
   include java::install
   include tomcat::install
   include tomcat::config
   include tomcat::service

}
 