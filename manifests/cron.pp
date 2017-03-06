# == Class: misc::cron
#
class misc::cron (
  $cron_job_hash = { 'example' => { hour    => absent,
                                    minute  => '*/1',
                                    command => "date > /tmp/date"
                                  },
                   },
  ) {

  create_resources('cron', $cron_job_hash)

}
