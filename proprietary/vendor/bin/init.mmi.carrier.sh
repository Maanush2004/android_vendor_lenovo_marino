#!/vendor/bin/sh

# Copyright (c) 2017, Motorola Mobility LLC, All Rights Reserved.
#
# Date Created: 11/01/2017, Carrier Client ID matrix for Android 20170915
#

carrier=`getprop ro.carrier`
wave=`getprop ro.mot.product_wave`

# Set default build properties to configure client ID values for GMS on Android
setprop ro.com.google.clientidbase android-motorola

# Set client ID properties base on region carrier
case $carrier in
    # North America Region - Amazon
    amz )
        setprop ro.com.google.clientidbase.ms android-motorola
        setprop ro.com.google.clientidbase.am android-motorola
    ;;
    # North America Region - AT&T
    att )
        setprop ro.com.google.clientidbase.ms android-att-us
        setprop ro.com.google.clientidbase.am android-att-us
        # base on product wave
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
                # ro.com.google.clientidbase.gmm and ro.com.google.clientidbase.yt deprecated
            ;;
            * )
                # legacy
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # North America Region - AT&T (AIO prepaid)
    aio )
        # wave > 2017.4
        setprop ro.com.google.clientidbase.ms android-att-aio-us
        setprop ro.com.google.clientidbase.am android-att-aio-us
    ;;
    # North America Region - Cricket
    cricket )
        # wave > 2017.4
        setprop ro.com.google.clientidbase.ms android-cricket
        setprop ro.com.google.clientidbase.am android-cricket
    ;;
    # North America Region - Sprint
    sprint )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-sprint-us-revc
                setprop ro.com.google.clientidbase.am android-sprint-us
            ;;
            # 2017.3
            2017.3 )
            ;;
            * )
                # legacy
                setprop ro.com.google.clientidbase.gmm android-motorola
            ;;
        esac
    ;;
    # North America Region - TMO
    tmo )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-tmus-us-revc
            ;;
            2017.3 )
                setprop ro.com.google.clientidbase.ms android-hms-tmobile-us
                setprop ro.com.google.clientidbase.am android-tmobile-us
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-hms-tmobile-us
                setprop ro.com.google.clientidbase.am android-tmobile-us
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # North America Region - USC
    usc )
        setprop ro.com.google.clientidbase.ms android-uscellular-us
        setprop ro.com.google.clientidbase.am android-uscellular-us
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
            ;;
            * )
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # North America Region - Verizon
    verizon )
        setprop ro.com.google.clientidbase.ms android-verizon
        setprop ro.com.google.clientidbase.am android-verizon
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
            ;;
            * )
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-verizon
            ;;
        esac
    ;;
    # North America Region - Metropcs
    metropcs )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-mpcs-us-revc
            ;;
            2017.[2-3] )
                setprop ro.com.google.clientidbase.am android-motorola
                setprop ro.com.google.clientidbase.ms android-motorola-rev2
            ;;
            * )
                setprop ro.com.google.clientidbase.am android-motorola
                setprop ro.com.google.clientidbase.ms android-motorola
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # North America Region - Rogers Canada
    rcica )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-rogers-ca-revc
                setprop ro.com.google.clientidbase.am android-rogers-ca
            ;;
            2017.3 )
                setprop ro.com.google.clientidbase.ms android-rogers-ca
                setprop ro.com.google.clientidbase.am android-rogers-ca
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-rogers-ca
                setprop ro.com.google.clientidbase.am android-rogers-ca
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # North America Region - Bell Canada
    bwaca )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-bell-ca
            ;;
            2017.3 )
                setrpop ro.com.google.clientidbase.ms android-bell-ca
                setprop ro.com.google.clientidbase.am android-bell-ca
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-bell-ca
                setprop ro.com.google.clientidbase.am android-bell-ca
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # EMEA - eegb
    eegb )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-dt-{country}-revc
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
            ;;
            2017.3 )
                setprop ro.com.google.clientidbase.ms android-orange-gb
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-tmobile-{country}
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
                setprop ro.com.google.clientidbase.gmm android-tmobile-{country}
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # EMEA - oraeu orafr oraes
    oraes|oraeu|orafr )
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-orange-{country}-revc
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-orange-{country}
                setprop ro.com.google.clientidbase.am android-orange-{country}
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # EMEA - dteu, tmde
    dteu|tmde )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-dt-{country}-revc
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
            ;;
            2017.3 )
                setprop ro.com.google.clientidbase.ms android-tmobile-{country}
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-tmobile-{country}
                setprop ro.com.google.clientidbase.am android-tmobile-{country}
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # EMEA - altfr vffr
    vffr|altfr )
        setprop ro.com.google.clientidbase.ms android-hms-vf-fr
        setprop ro.com.google.clientidbase.am android-sfr-fr
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
            ;;
            * )
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # Ameria Movil - Claro, Comcel, Telcel, Porta, Tracfone
    amovil|amxar|amxbr|amxcl|amxco|amxla|amxmx|amxpe|openmx )
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.ms android-americamovil-{country}-revc
                setprop ro.com.google.clientidbase.am android-americamovil-{country}
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-americamovil-{country}
                setprop ro.com.google.clientidbase.am android-americamovil-{country}
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # 3GB
    3gb )
        case $wave in
            # wave > 2017.3
            2017.[3-4]|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.am android-h3g-{country}
            ;;
            * )
                setprop ro.com.google.clientidbase.ms android-h3g-{country}
                setprop ro.com.google.clientidbase.am android-h3g-{country}
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # Telstra AU
    telau )
        case $wave in
            # wave > 2017.4
            2017.4|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.am android-telstra-au-revc
                setprop ro.com.google.clientidbase.ms android-telstra-au
                setprop ro.com.google.clientidbase.wal android-telstra-au
            ;;
            2017.3 )
                setprop ro.com.google.clientidbase.am android-telstra-au
                setprop ro.com.google.clientidbase.ms android-telstra-au
                setprop ro.com.google.clientidbase.wal android-telstra-au
            ;;
            * )
                setprop ro.com.google.clientidbase.am android-telstra-au
                setprop ro.com.google.clientidbase.ms android-telstra-au
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
    # GMS properties by default
    * )
        case $wave in
            2017.[3-4]|201[8-9].[1-4] )
                setprop ro.com.google.clientidbase.am android-motorola
                setprop ro.com.google.clientidbase.ms android-motorola-rev2
            ;;
            2017.2 )
                setprop ro.com.google.clientidbase.am android-motorola
                setprop ro.com.google.clientidbase.ms android-motorola-rev2
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
            * )
                setprop ro.com.google.clientidbase.am android-motorola
                setprop ro.com.google.clientidbase.ms android-motorola
                setprop ro.com.google.clientidbase.gmm android-motorola
                setprop ro.com.google.clientidbase.yt android-motorola
            ;;
        esac
    ;;
esac # end $carrier for GMS

# Set additional properties base on carrier
case $carrier in
    att )
        case $wave in
            # wave > 2018.1
            201[8-9].[1-4] )
                setprop ro.config.ringtone ATT_Firefly.ogg
                setprop ro.config.notification_sound ATT_Chat_In.ogg
            ;;
        esac
    ;;
    tmo )
        setprop ro.com.android.dataroaming true
        case $wave in
            # wave > 2018.1
            201[8-9].[1-4] )
                setprop ro.config.ringtone TJINGLE.ogg
            ;;
        esac
    ;;
    acg|lra )
        setprop ro.com.android.dataroaming true
        setprop ril.subscription.types RUIM
    ;;
    bouyfr )
        setprop ro.location.providers.allowed gps
    ;;
    usc|metropcs|eegb )
        setprop ro.com.android.dataroaming true
    ;;
    oraes|oraeu|orafr )
        setprop media.httplive.kdlblocksize 1920
    ;;
    reteu|amxmx )
        setprop persist.radio.suppress_ussd_rel 1
    ;;
    amxbr )
        setprop persist.radio.use_se_table_only 1
    ;;
    wndca|retca )
        setprop persist.radio.process_sups_ind 1
    ;;
esac

