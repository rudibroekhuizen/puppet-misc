# == Class: misc::vcsrepo
#
class misc::vcsrepo (
  $vcsrepo_hash = undef
) {

  $vcsrepo_hash.each |$title, $vcsrepo| {
    vcsrepo { "/etc/puppetlabs/code/modules/${title}":
      provider => git,
      source   => $vcsrepo["source"],
    }
  }

}
