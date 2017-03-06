# == Class: misc::logrotate
#
class misc::logrotate (
  $logrotate_rule_hash = { 'example' => { path    => '/var/log/*.json',
                                          rotate  => '5',
                                        },
                         },
  ) {

  create_resources('logrotate::rule', $logrotate_rule_hash)

}
