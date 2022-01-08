.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$History;,
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;,
        Lcom/android/server/power/PowerManagerUtil$Country;,
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    }
.end annotation


# static fields
.field public static final AUTO_BRIGHTNESS_LIMIT_PERFORMANCE_MODE_NONE:I = 0x64

.field public static final AUTO_BRIGHTNESS_LIMIT_PERFORMANCE_MODE_NORMAL:I = 0x5a

.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final B2_PROJECT:Z

.field public static final BEYOND_PROJECT:Z

.field public static final BLOOM_PROJECT:Z

.field public static CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z = false

.field public static final CANVAS_PROJECT:Z

.field public static final CROWN_PROJECT:Z

.field public static final DAVINCI_PROJECT:Z

.field private static final DEBUG_LOW:Z

.field private static final DEBUG_UNKNOWN:Z

.field public static final DREAM_PROJECT:Z

.field public static final GREAT_PROJECT:Z

.field public static final GTA3XL_PROJECT:Z

.field public static final GTA4S_PROJECT:Z

.field public static final HUBBLE_PROJECT:Z

.field public static final PALETTE_PROJECT:Z

.field public static final Q2_PROJECT:Z

.field public static final RAINBOW_PROJECT:Z

.field public static final SECURITY_FINGERPRINT_IN_DISPLAY:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

.field public static final SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

.field public static final SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_BATTERY_SW_ASOC:Z

.field public static final SEC_FEATURE_CONVERTING_BRIGHTNESS:Z

.field public static final SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

.field public static final SEC_FEATURE_DEX_DUAL_VIEW:Z = true

.field public static final SEC_FEATURE_DUAL_DISPLAY:Z = false

.field public static final SEC_FEATURE_EARLY_WAKEUP:Z = true

.field private static final SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_FLIP_COVER_DISPLAY:Z = false

.field public static final SEC_FEATURE_HQM_SEND_DPDD:Z

.field public static final SEC_FEATURE_HQM_SEND_DPUC:Z

.field public static final SEC_FEATURE_JDM:Z

.field public static SEC_FEATURE_MIRROR_LINK:Z = false

.field public static final SEC_FEATURE_PREVENT_SWELLING:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

.field public static final SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

.field public static final SEC_FEATURE_TABLET:Z

.field public static final SEC_FEATURE_USE_AFC:Z

.field public static final SEC_FEATURE_USE_GED_DOZE:Z

.field public static final SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_USE_SFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_AFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

.field public static final SEC_FEATURE_VZW_DEVICE_QUALITY_STATISTICS_DATA:Z = false

.field public static final SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

.field public static final SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

.field public static final SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

.field public static SEP_LITE:Z = false

.field private static final SHIP_BUILD:Z

.field public static final STAR_PROJECT:Z

.field public static final TABA2XL_PROJECT:Z

.field public static final TABS4_PROJECT:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TOP_PROJECT:Z

.field public static final USE_FAST_RAMP_RATE:Z

.field public static final USE_LONG_RAMP_RATE_FOR_NON_HBM:Z

.field public static final USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

.field public static USE_SEC_LONG_TERM_MODEL:Z = false

.field public static final USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field public static final VICTORY_PROJECT:Z

.field public static final WINNER_PROJECT:Z

.field public static final XCOVER_PROJECT:Z

.field private static final YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

.field private static final YUVA_FEATURE_TAG:Ljava/lang/String; = "CscFeature_Common_ConfigYuva"

.field public static final ZODIAC_PROJECT:Z

.field private static final deviceType:Ljava/lang/String;

.field private static final mProductName:Ljava/lang/String;

.field public static final productType:Ljava/lang/String; = "in_house"


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->DREAM_PROJECT:Z

    const-string/jumbo v2, "great"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->GREAT_PROJECT:Z

    const-string/jumbo v3, "star"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->STAR_PROJECT:Z

    const-string v3, "crown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->CROWN_PROJECT:Z

    const-string/jumbo v3, "gts4l"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->TABS4_PROJECT:Z

    const-string/jumbo v4, "gta2xl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->TABA2XL_PROJECT:Z

    const-string v5, "beyond"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->BEYOND_PROJECT:Z

    const-string v6, "d1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_5f

    const-string v6, "d2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 v6, 0x0

    goto :goto_60

    :cond_5f
    :goto_5f
    move v6, v8

    :goto_60
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->DAVINCI_PROJECT:Z

    const-string/jumbo v6, "winner"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->WINNER_PROJECT:Z

    const-string v9, "bloom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->BLOOM_PROJECT:Z

    const-string/jumbo v9, "x1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_91

    const-string/jumbo v9, "y2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_91

    const-string/jumbo v9, "z3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8f

    goto :goto_91

    :cond_8f
    const/4 v9, 0x0

    goto :goto_92

    :cond_91
    :goto_91
    move v9, v8

    :goto_92
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->HUBBLE_PROJECT:Z

    const-string/jumbo v9, "xcoverpro"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->XCOVER_PROJECT:Z

    const-string v9, "c1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b0

    const-string v9, "c2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v9, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v9, v8

    :goto_b1
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->CANVAS_PROJECT:Z

    const-string v9, "f2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->TOP_PROJECT:Z

    const-string/jumbo v9, "zodiac"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->ZODIAC_PROJECT:Z

    const-string/jumbo v9, "victory"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->VICTORY_PROJECT:Z

    const-string/jumbo v9, "o1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_eb

    const-string/jumbo v9, "t2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_eb

    const-string/jumbo v9, "p3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e9

    goto :goto_eb

    :cond_e9
    const/4 v9, 0x0

    goto :goto_ec

    :cond_eb
    :goto_eb
    move v9, v8

    :goto_ec
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->PALETTE_PROJECT:Z

    const-string/jumbo v10, "gta4s"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->GTA4S_PROJECT:Z

    const-string/jumbo v11, "gta3xl"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->GTA3XL_PROJECT:Z

    const-string/jumbo v12, "q2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->Q2_PROJECT:Z

    const-string v13, "b2"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->B2_PROJECT:Z

    const-string/jumbo v14, "r0"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12d

    const-string v14, "g0"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12d

    const-string v14, "b0"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    goto :goto_12d

    :cond_12b
    const/4 v0, 0x0

    goto :goto_12e

    :cond_12d
    :goto_12d
    move v0, v8

    :goto_12e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->RAINBOW_PROJECT:Z

    const-string v14, "5"

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v15, 0x3

    if-lt v14, v15, :cond_13d

    move v15, v8

    goto :goto_13e

    :cond_13d
    const/4 v15, 0x0

    :goto_13e
    sput-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    const/4 v7, 0x4

    if-ne v14, v7, :cond_145

    move v7, v8

    goto :goto_146

    :cond_145
    const/4 v7, 0x0

    :goto_146
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    const/4 v7, 0x5

    if-ne v14, v7, :cond_14d

    move v7, v8

    goto :goto_14e

    :cond_14d
    const/4 v7, 0x0

    :goto_14e
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    sput-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    xor-int/2addr v7, v8

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    if-nez v10, :cond_15e

    if-eqz v11, :cond_15c

    goto :goto_15e

    :cond_15c
    const/4 v7, 0x0

    goto :goto_15f

    :cond_15e
    :goto_15e
    move v7, v8

    :goto_15f
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_FAST_RAMP_RATE:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_LONG_RAMP_RATE_FOR_NON_HBM:Z

    xor-int/lit8 v7, v0, 0x1

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    const-string/jumbo v7, "ro.boot.debug_level"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Unknown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "0x4f4c"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    const-string/jumbo v11, "ro.product_ship"

    const-string/jumbo v14, "true"

    invoke-static {v11, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v10, :cond_19c

    if-nez v7, :cond_19c

    move v14, v8

    goto :goto_19d

    :cond_19c
    const/4 v14, 0x0

    :goto_19d
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-nez v10, :cond_1a7

    if-nez v7, :cond_1a7

    if-nez v11, :cond_1a7

    move v14, v8

    goto :goto_1a8

    :cond_1a7
    const/4 v14, 0x0

    :goto_1a8
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    if-nez v10, :cond_1b2

    if-nez v7, :cond_1b2

    if-nez v11, :cond_1b2

    move v7, v8

    goto :goto_1b3

    :cond_1b2
    const/4 v7, 0x0

    :goto_1b3
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1c7

    if-eqz v5, :cond_1c5

    goto :goto_1c7

    :cond_1c5
    const/4 v5, 0x0

    goto :goto_1c8

    :cond_1c7
    :goto_1c7
    move v5, v8

    :goto_1c8
    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v10, ""

    invoke-virtual {v5, v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "aodversion"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    invoke-virtual {v14, v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "INFINITY"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v11, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_CLOCKPACK_ITEM"

    invoke-virtual {v5, v11, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "clockpackversion"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    sget-boolean v5, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-nez v1, :cond_21f

    if-eqz v2, :cond_21d

    goto :goto_21f

    :cond_21d
    const/4 v1, 0x0

    goto :goto_220

    :cond_21f
    :goto_21f
    move v1, v8

    :goto_220
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-nez v3, :cond_259

    if-eqz v4, :cond_257

    goto :goto_259

    :cond_257
    const/4 v1, 0x0

    goto :goto_25a

    :cond_259
    :goto_259
    move v1, v8

    :goto_25a
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_NIGHT_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    const-string/jumbo v1, "in_house"

    const-string/jumbo v2, "jdm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29a

    move v1, v8

    goto :goto_29b

    :cond_29a
    const/4 v1, 0x0

    :goto_29b
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_JDM:Z

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPDD:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_CONVERTING_BRIGHTNESS:Z

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    nop

    const-string/jumbo v0, "google_touch_display_ultrasonic"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activeclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    const-string v0, "ADAPTIVE_BRIGHTNESS"

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_2df

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2df

    move v11, v8

    goto :goto_2e0

    :cond_2df
    const/4 v11, 0x0

    :goto_2e0
    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEP_LITE:Z

    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MIRROR_LINK:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brightnessToString(F)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%3d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "%.2f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move v0, v1

    goto :goto_10

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerUtil"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteInt to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_41

    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_41

    goto :goto_45

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_3d

    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_33

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3d

    goto :goto_41

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static printArray([FLjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " array l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1b
    array-length v2, p0

    if-ge v0, v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_42
    return-void
.end method

.method public static printArray([ILjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " array l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1b
    array-length v2, p0

    if-ge v0, v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_42
    return-void
.end method
