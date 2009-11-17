use Module::Build;
Module::Build->new(
    module_name => 'App::PerlCalc',
    dist_version_from => 'pc',
    license     => 'perl',
    dist_author => 'David Caldwell <david@porkrind.org>',
    requires      => {
        perl => '5.8.0',
    },
    recommends    => {
        Term::ReadLine => 0,
    },
    build_requires => {
        Test::Script::Run => 0,
    },
    script_files => ['pc'],
)->create_build_script;
