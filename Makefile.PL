use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	=> 'Chart::Ploticus',
    'VERSION_FROM' => 'Ploticus.pm',

    # You MUST alter this to match your LIBS line from ploticus
    'LIBS'	=> ['-L/usr/local/lib -lploticus -lpng -lz'],
    'DEFINE'	=> '',
    'INC'	=> '-I/usr/local/include',
);
