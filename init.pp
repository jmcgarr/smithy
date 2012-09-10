node default {
	
	package { ['curl', 'unzip']: ensure => present } 

	class { 'apt': }

	class { 'stdlib': }
	
	class { 'jenkins': }

	class { 'nexus': }

	class { 'sonar': }

	class { 'gitblit': nonSslPort => 8085}

	#class { 'jenkins': port => 8082 }
	
	# class { 'tomcat': version => 6 }
	

	#jenkins::plugin {
	#	"git" : ;
	#	"gradle" : ;
	#	"grails" : ;
	#	"groovy" : ;
	#	"filesystem_scm" : ;
	#}
	
	#Class['apt'] -> Class['stdlib'] -> Class['jenkins'] -> Class['nexus'] -> Class['sonar'] -> Class['gitblit']
}