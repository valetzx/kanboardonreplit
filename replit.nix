{ pkgs }: {
    deps = [
        pkgs.postgresql_14
        pkgs.less
        pkgs.sqlite
        pkgs.php74
        pkgs.php74Extensions.pdo_pgsql
        pkgs.bashInteractive
    ];
}
