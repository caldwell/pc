use Module::Build;
Module::Build->new(
    module_name => 'App::PerlCalc',
    dist_version => '1.0.0',
    license     => 'perl',
    dist_author => 'David Caldwell <david@porkrind.org>',
    recommends    => {
        Term::ReadLine => 0,
    },
    script_files => ['pc'],
)->create_build_script;
