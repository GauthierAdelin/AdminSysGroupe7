$TTL 24H
$ORIGIN gauthier.ephec-ti.be.
@       1D      IN      SOA     ns.gauthier.ephec-ti.be. root.gauthier.ephec-ti.be. (
                                1          ; serial number
                                3600       ; refresh [1h]
                                600        ; retry [10m]
                                1209600    ; expire[14d]
                                3600 )     ; min TTL [1h]

@       IN      NS      ns.gauthier.ephec-ti.be.
ns      IN      A       51.77.203.5
        IN      AAAA    2001:41d0:404:200::12e6
@       IN      A       51.77.203.5
        IN      AAAA    2001:41d0:404:200::12e6
web     IN      A       51.77.203.5
        IN      AAAA    2001:41d0:404:200::12e6
www     IN      CNAME   web
b2b     IN      CNAME   web
intranet IN     CNAME   web