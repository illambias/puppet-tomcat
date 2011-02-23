import "classes/*.pp"
import "definitions/*.pp"

/*

== Class: tomcat

Installs tomcat using the default version providing by distributions.

Example usage:

  include tomcat

*/
class tomcat {
  case $operatingsystem {
    RedHat       : { include tomcat::redhat }
    Debian,Ubuntu: { include tomcat::debian }
    default      : { notice "Unsupported operatingsystem ${operatingsystem}" }
  }
}


/*

== Class: tomcat::package::v5-5

Deprecated: use simply "include tomcat" instead!

*/
class tomcat::package::v5-5 {
  notify {"class $name is deprecated, class 'tomcat' is automatically included for backwards compatibility":}
  include tomcat
}

/*

== Class: tomcat::package::v6

Deprecated: include "tomcat" instead!

*/
class tomcat::package::v6 {
  notify {"class $name is deprecated, class 'tomcat' is automatically included for backwards compatibility":}
  include tomcat
}
