node default {
	
	package { ['curl', 'unzip']: ensure => present } 

	class { 'apt': }

	class { 'stdlib': }
	
	class { 'jenkins': }

	class { 'nexus': }

	class { 'sonar': }

	#class { 'jenkins': port => 8082 }
	
	# class { 'tomcat': version => 6 }
	

	#jenkins::plugin {
	#	"git" : ;
	#	"gradle" : ;
	#	"grails" : ;
	#	"groovy" : ;
	#	"filesystem_scm" : ;
	#}
	
}