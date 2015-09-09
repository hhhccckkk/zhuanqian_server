.class public Lcn/yeeguo/YeeguoBase64;
.super Ljava/lang/Object;
.source "YeeguoBase64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/yeeguo/YeeguoBase64$Base64InputStream;,
        Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field public static final GZIP:I = 0x2

.field private static final LOG:Ljava/util/logging/Logger; = null

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field public static final URL_SAFE:I = 0x10

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 34
    const-class v0, Lcn/yeeguo/YeeguoBase64;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_STANDARD_ALPHABET:[B

    .line 39
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    .line 40
    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    .line 41
    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    .line 42
    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 39
    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_STANDARD_DECODABET:[B

    .line 44
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_URL_SAFE_ALPHABET:[B

    .line 47
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    .line 48
    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    .line 49
    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    .line 50
    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 47
    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_URL_SAFE_DECODABET:[B

    .line 52
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_ORDERED_ALPHABET:[B

    .line 55
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    .line 56
    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    .line 57
    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    .line 58
    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 55
    sput-object v0, Lcn/yeeguo/YeeguoBase64;->_ORDERED_DECODABET:[B

    .line 58
    return-void

    .line 36
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 44
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 52
    :array_2
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/yeeguo/YeeguoBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 13
    .parameter "s"
    .parameter "options"

    .prologue
    const/4 v11, 0x0

    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, bytes:[B
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 329
    :goto_0
    array-length v9, v2

    invoke-static {v2, v11, v9, p1}, Lcn/yeeguo/YeeguoBase64;->decode([BIII)[B

    move-result-object v2

    .line 331
    if-eqz v2, :cond_0

    array-length v9, v2

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 332
    aget-byte v9, v2, v11

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int v6, v9, v10

    .line 333
    .local v6, head:I
    const v9, 0x8b1f

    if-ne v9, v6, :cond_0

    .line 334
    const/4 v4, 0x0

    .line 335
    .local v4, gzis:Ljava/util/zip/GZIPInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 339
    .end local v4           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v5, gzis:Ljava/util/zip/GZIPInputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v1, v9, [B

    .line 340
    .local v1, buffer:[B
    const/4 v7, 0x0

    .local v7, length:I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v7

    if-gez v7, :cond_1

    .line 344
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 348
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 352
    :goto_2
    if-eqz v5, :cond_0

    .line 354
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 363
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v5           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v6           #head:I
    .end local v7           #length:I
    :cond_0
    :goto_3
    return-object v2

    .line 325
    :catch_0
    move-exception v8

    .line 326
    .local v8, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0

    .line 341
    .end local v8           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #head:I
    .restart local v7       #length:I
    :cond_1
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v0, v1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 345
    .end local v1           #buffer:[B
    .end local v7           #length:I
    :catch_1
    move-exception v9

    move-object v4, v5

    .line 348
    .end local v5           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzis:Ljava/util/zip/GZIPInputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 352
    :goto_5
    if-eqz v4, :cond_0

    .line 354
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 355
    :catch_2
    move-exception v3

    .line 356
    .local v3, e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing GZIPInputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 349
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 350
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing ByteArrayOutputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 346
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 348
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 352
    :goto_7
    if-eqz v4, :cond_2

    .line 354
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 359
    :cond_2
    :goto_8
    throw v9

    .line 349
    :catch_4
    move-exception v3

    .line 350
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v10, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "error closing ByteArrayOutputStream"

    invoke-virtual {v10, v11, v12, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 355
    .end local v3           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 356
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v10, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "error closing GZIPInputStream"

    invoke-virtual {v10, v11, v12, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 349
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v7       #length:I
    :catch_6
    move-exception v3

    .line 350
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing ByteArrayOutputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 355
    .end local v3           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 356
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing GZIPInputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 346
    .end local v1           #buffer:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #length:I
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzis:Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .line 345
    :catch_8
    move-exception v9

    goto :goto_4
.end method

.method public static decode([BIII)[B
    .locals 16
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 277
    invoke-static/range {p3 .. p3}, Lcn/yeeguo/YeeguoBase64;->getDecodabet(I)[B

    move-result-object v1

    .line 279
    .local v1, DECODABET:[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 280
    .local v6, len34:I
    new-array v8, v6, [B

    .line 281
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 283
    .local v9, outBuffPosn:I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 284
    .local v2, b4:[B
    const/4 v3, 0x0

    .line 285
    .local v3, b4Posn:I
    const/4 v5, 0x0

    .line 286
    .local v5, i:I
    const/4 v10, 0x0

    .line 287
    .local v10, sbiCrop:B
    const/4 v11, 0x0

    .line 289
    .local v11, sbiDecode:B
    move/from16 v5, p1

    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_0
    add-int v12, p1, p2

    if-lt v5, v12, :cond_1

    move v3, v4

    .line 312
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_0
    new-array v7, v9, [B

    .line 313
    .local v7, out:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    .end local v7           #out:[B
    :goto_1
    return-object v7

    .line 290
    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_1
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 291
    aget-byte v11, v1, v10

    .line 293
    const/4 v12, -0x5

    if-lt v11, v12, :cond_3

    .line 295
    const/4 v12, -0x1

    if-lt v11, v12, :cond_4

    .line 296
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aput-byte v10, v2, v4

    .line 297
    const/4 v12, 0x3

    if-le v3, v12, :cond_2

    .line 298
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lcn/yeeguo/YeeguoBase64;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 299
    const/4 v3, 0x0

    .line 301
    const/16 v12, 0x3d

    if-eq v10, v12, :cond_0

    .line 289
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_0

    .line 306
    :cond_3
    sget-object v12, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Bad Base64 input character at "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-byte v15, p0, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "(decimal)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 308
    const/4 v7, 0x0

    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_1

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_4
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_2
.end method

.method protected static decode4to3([BI[BII)I
    .locals 7
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v4, 0x3d

    .line 242
    invoke-static {p4}, Lcn/yeeguo/YeeguoBase64;->getDecodabet(I)[B

    move-result-object v0

    .line 244
    .local v0, DECODABET:[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    .line 245
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v2, v3, v4

    .line 247
    .local v2, outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 248
    const/4 v3, 0x1

    .line 273
    .end local v2           #outBuff:I
    :goto_0
    return v3

    .line 250
    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_1

    .line 251
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v2, v3, v4

    .line 253
    .restart local v2       #outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 254
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 255
    const/4 v3, 0x2

    goto :goto_0

    .line 259
    .end local v2           #outBuff:I
    :cond_1
    :try_start_0
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    .line 260
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 259
    or-int v2, v3, v4

    .line 262
    .restart local v2       #outBuff:I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 263
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 264
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v3, 0x3

    goto :goto_0

    .line 267
    .end local v2           #outBuff:I
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error decoding bytes at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, p0, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p0, p1

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x2

    aget-byte v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x2

    aget-byte v6, p0, v6

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 524
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 525
    .local v0, decoded:[B
    const/4 v2, 0x0

    .line 527
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 532
    if-eqz v3, :cond_2

    .line 534
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 539
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error decoding from file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    if-eqz v2, :cond_0

    .line 534
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 535
    :catch_1
    move-exception v1

    .line 536
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error closing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 531
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 532
    :goto_2
    if-eqz v2, :cond_1

    .line 534
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 538
    :cond_1
    :goto_3
    throw v4

    .line 535
    :catch_2
    move-exception v1

    .line 536
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error closing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 535
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 536
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error closing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 531
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 529
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 13
    .parameter "filename"

    .prologue
    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, decodedData:[B
    const/4 v0, 0x0

    .line 441
    .local v0, bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v5, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 444
    .local v2, buffer:[B
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 445
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "File is too big for this convenience method ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    if-eqz v0, :cond_0

    .line 464
    :try_start_1
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 471
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    :goto_1
    return-object v8

    .line 465
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 466
    .local v4, e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64InputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 450
    new-instance v1, Lcn/yeeguo/YeeguoBase64$Base64InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 452
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .local v1, bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    const/4 v6, 0x0

    .line 453
    .local v6, length:I
    const/4 v7, 0x0

    .local v7, numBytes:I
    :goto_2
    const/16 v8, 0x1000

    :try_start_3
    invoke-virtual {v1, v2, v6, v8}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_3

    .line 457
    new-array v3, v6, [B

    .line 458
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 462
    if-eqz v1, :cond_5

    .line 464
    :try_start_4
    invoke-virtual {v1}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :cond_2
    :goto_3
    move-object v8, v3

    .line 471
    goto :goto_1

    .line 454
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_3
    add-int/2addr v6, v7

    goto :goto_2

    .line 459
    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catch_1
    move-exception v4

    .line 460
    .local v4, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error decoding from file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 462
    if-eqz v0, :cond_2

    .line 464
    :try_start_6
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 465
    :catch_2
    move-exception v4

    .line 466
    .local v4, e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64InputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 461
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 462
    :goto_5
    if-eqz v0, :cond_4

    .line 464
    :try_start_7
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 469
    :cond_4
    :goto_6
    throw v8

    .line 465
    :catch_3
    move-exception v4

    .line 466
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing Base64InputStream"

    invoke-virtual {v9, v10, v11, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 465
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_4
    move-exception v4

    .line 466
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64InputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    goto :goto_3

    .line 461
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    goto :goto_5

    .line 459
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    goto :goto_4
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "dataToDecode"
    .parameter "filename"

    .prologue
    .line 415
    const/4 v3, 0x0

    .line 416
    .local v3, success:Z
    const/4 v0, 0x0

    .line 418
    .local v0, bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :try_start_0
    new-instance v1, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .local v1, bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 420
    const/4 v3, 0x1

    .line 425
    if-eqz v1, :cond_2

    .line 427
    :try_start_2
    invoke-virtual {v1}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 434
    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :cond_0
    :goto_0
    return v3

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error decoding to file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    const/4 v3, 0x0

    .line 425
    if-eqz v0, :cond_0

    .line 427
    :try_start_4
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 428
    :catch_1
    move-exception v2

    .line 429
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "error closing Base64OutputStream"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 424
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 425
    :goto_2
    if-eqz v0, :cond_1

    .line 427
    :try_start_5
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 432
    :cond_1
    :goto_3
    throw v4

    .line 428
    :catch_2
    move-exception v2

    .line 429
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error closing Base64OutputStream"

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 428
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catch_3
    move-exception v2

    .line 429
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "error closing Base64OutputStream"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_0

    .line 424
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_2

    .line 421
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "encodedObject"

    .prologue
    .line 367
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 369
    .local v2, objBytes:[B
    const/4 v1, 0x0

    .line 370
    .local v1, obj:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 372
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 373
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 379
    if-eqz v4, :cond_2

    .line 381
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 388
    .end local v1           #obj:Ljava/lang/Object;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 374
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error decoding object"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    if-eqz v3, :cond_0

    .line 381
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error closing ObjectInputStream"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_5
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error decoding object"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    if-eqz v3, :cond_0

    .line 381
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 382
    :catch_3
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error closing ObjectInputStream"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 379
    :goto_3
    if-eqz v3, :cond_1

    .line 381
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 386
    :cond_1
    :goto_4
    throw v5

    .line 382
    :catch_4
    move-exception v0

    .line 383
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v6, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "error closing ObjectInputStream"

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 382
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    .line 383
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error closing ObjectInputStream"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 378
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 376
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 374
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method protected static encode3to4([BII[BII)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 88
    invoke-static {p5}, Lcn/yeeguo/YeeguoBase64;->getAlphabet(I)[B

    move-result-object v0

    .line 90
    .local v0, ALPHABET:[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    .line 91
    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    .line 90
    :cond_0
    or-int v1, v3, v2

    .line 93
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_2
    return-object p3

    .end local v1           #inBuff:I
    :cond_1
    move v4, v2

    .line 90
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 95
    .restart local v1       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 96
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 97
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 98
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 101
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 102
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 103
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 104
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 107
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 108
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 109
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 110
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static encode3to4([B[BII)[B
    .locals 6
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 83
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcn/yeeguo/YeeguoBase64;->encode3to4([BII[BII)[B

    .line 84
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 163
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcn/yeeguo/YeeguoBase64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"

    .prologue
    .line 167
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcn/yeeguo/YeeguoBase64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/yeeguo/YeeguoBase64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 19
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 175
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 176
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x0

    .line 179
    .local v12, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v3, v9, v4}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v13, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 181
    .end local v12           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v13, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 182
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 183
    const/4 v12, 0x0

    .line 184
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v12       #gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 192
    .local v17, str:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 194
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 238
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v17           #str:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 195
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v17       #str:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 196
    .local v7, e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing GZIPOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 201
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing ByteArrayOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    .end local v7           #e:Ljava/lang/Exception;
    .end local v17           #str:Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 187
    .local v18, uue:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v12, :cond_1

    .line 194
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 199
    :cond_1
    :goto_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 200
    :catch_3
    move-exception v7

    .line 201
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing ByteArrayOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 195
    .end local v7           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 196
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing GZIPOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 188
    .end local v7           #e:Ljava/lang/Exception;
    .end local v18           #uue:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v7

    .line 189
    .local v7, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error encoding byte array"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    if-eqz v12, :cond_2

    .line 194
    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 199
    .end local v7           #e:Ljava/io/IOException;
    :cond_2
    :goto_5
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 190
    :goto_6
    const/16 v17, 0x0

    goto :goto_1

    .line 195
    .restart local v7       #e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 196
    .local v7, e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing GZIPOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 200
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 201
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v3, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "error closing ByteArrayOutputStream"

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 191
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 192
    :goto_7
    if-eqz v12, :cond_3

    .line 194
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 199
    :cond_3
    :goto_8
    :try_start_c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 204
    :goto_9
    throw v3

    .line 195
    :catch_8
    move-exception v7

    .line 196
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "error closing GZIPOutputStream"

    invoke-virtual {v4, v5, v8, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 200
    .end local v7           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v7

    .line 201
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "error closing ByteArrayOutputStream"

    invoke-virtual {v4, v5, v8, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 208
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #gzos:Ljava/util/zip/GZIPOutputStream;
    :cond_4
    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_6

    const/4 v10, 0x1

    .line 210
    .local v10, breakLines:Z
    :goto_a
    mul-int/lit8 v3, p2, 0x4

    div-int/lit8 v15, v3, 0x3

    .line 211
    .local v15, len43:I
    rem-int/lit8 v3, p2, 0x3

    if-lez v3, :cond_7

    const/4 v3, 0x4

    :goto_b
    add-int v4, v15, v3

    if-eqz v10, :cond_8

    div-int/lit8 v3, v15, 0x4c

    :goto_c
    add-int/2addr v3, v4

    new-array v6, v3, [B

    .line 213
    .local v6, outBuff:[B
    const/4 v11, 0x0

    .line 214
    .local v11, d:I
    const/4 v7, 0x0

    .line 215
    .local v7, e:I
    add-int/lit8 v14, p2, -0x2

    .line 216
    .local v14, len2:I
    const/16 v16, 0x0

    .line 217
    .local v16, lineLength:I
    :goto_d
    if-lt v11, v14, :cond_9

    .line 229
    move/from16 v0, p2

    if-ge v11, v0, :cond_5

    .line 230
    add-int v4, v11, p1

    sub-int v5, p2, v11

    move-object/from16 v3, p0

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcn/yeeguo/YeeguoBase64;->encode3to4([BII[BII)[B

    .line 231
    add-int/lit8 v7, v7, 0x4

    .line 235
    :cond_5
    :try_start_d
    new-instance v17, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v3, v7, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_1

    .line 236
    :catch_a
    move-exception v3

    .line 238
    new-instance v17, Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v3, v7}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_1

    .line 208
    .end local v6           #outBuff:[B
    .end local v7           #e:I
    .end local v10           #breakLines:Z
    .end local v11           #d:I
    .end local v14           #len2:I
    .end local v15           #len43:I
    .end local v16           #lineLength:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_a

    .line 211
    .restart local v10       #breakLines:Z
    .restart local v15       #len43:I
    :cond_7
    const/4 v3, 0x0

    goto :goto_b

    :cond_8
    const/4 v3, 0x0

    goto :goto_c

    .line 218
    .restart local v6       #outBuff:[B
    .restart local v7       #e:I
    .restart local v11       #d:I
    .restart local v14       #len2:I
    .restart local v16       #lineLength:I
    :cond_9
    add-int v4, v11, p1

    const/4 v5, 0x3

    move-object/from16 v3, p0

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcn/yeeguo/YeeguoBase64;->encode3to4([BII[BII)[B

    .line 220
    add-int/lit8 v16, v16, 0x4

    .line 221
    if-eqz v10, :cond_a

    const/16 v3, 0x4c

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 222
    add-int/lit8 v3, v7, 0x4

    const/16 v4, 0xa

    aput-byte v4, v6, v3

    .line 223
    add-int/lit8 v7, v7, 0x1

    .line 224
    const/16 v16, 0x0

    .line 226
    :cond_a
    add-int/lit8 v11, v11, 0x3

    .line 217
    add-int/lit8 v7, v7, 0x4

    goto :goto_d

    .line 191
    .end local v6           #outBuff:[B
    .end local v7           #e:I
    .end local v10           #breakLines:Z
    .end local v11           #d:I
    .end local v14           #len2:I
    .end local v15           #len43:I
    .end local v16           #lineLength:I
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v12       #gzos:Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_7

    .line 188
    .end local v12           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_b
    move-exception v7

    move-object v12, v13

    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v12       #gzos:Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_4

    .line 186
    .end local v12           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v18

    move-object v12, v13

    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v12       #gzos:Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_2
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 506
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    .line 509
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 514
    if-eqz v3, :cond_2

    .line 516
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 521
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error encoding from file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    if-eqz v2, :cond_0

    .line 516
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 517
    :catch_1
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error closing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 513
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 514
    :goto_2
    if-eqz v2, :cond_1

    .line 516
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 520
    :cond_1
    :goto_3
    throw v4

    .line 517
    :catch_2
    move-exception v0

    .line 518
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error closing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 517
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 518
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error closing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 513
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 511
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "filename"

    .prologue
    .line 475
    const/4 v4, 0x0

    .line 476
    .local v4, encodedData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 478
    .local v0, bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x3ff6666666666666L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/16 v10, 0x28

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v2, v9, [B

    .line 482
    .local v2, buffer:[B
    new-instance v1, Lcn/yeeguo/YeeguoBase64$Base64InputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .local v1, bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    const/4 v7, 0x0

    .line 485
    .local v7, length:I
    const/4 v8, 0x0

    .local v8, numBytes:I
    :goto_0
    const/16 v9, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v7, v9}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_1

    .line 489
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 493
    .end local v4           #encodedData:Ljava/lang/String;
    .local v5, encodedData:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 495
    :try_start_2
    invoke-virtual {v1}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    move-object v4, v5

    .line 502
    .end local v2           #buffer:[B
    .end local v5           #encodedData:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v4       #encodedData:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 486
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :cond_1
    add-int/2addr v7, v8

    goto :goto_0

    .line 490
    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .end local v2           #buffer:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catch_0
    move-exception v3

    .line 491
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error encoding from file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 493
    if-eqz v0, :cond_0

    .line 495
    :try_start_4
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 496
    :catch_1
    move-exception v3

    .line 497
    .local v3, e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing Base64InputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 492
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 493
    :goto_3
    if-eqz v0, :cond_2

    .line 495
    :try_start_5
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 500
    :cond_2
    :goto_4
    throw v9

    .line 496
    :catch_2
    move-exception v3

    .line 497
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v10, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "error closing Base64InputStream"

    invoke-virtual {v10, v11, v12, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 496
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #encodedData:Ljava/lang/String;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #encodedData:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catch_3
    move-exception v3

    .line 497
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing Base64InputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    move-object v4, v5

    .end local v5           #encodedData:Ljava/lang/String;
    .restart local v4       #encodedData:Ljava/lang/String;
    goto :goto_1

    .line 492
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    goto :goto_3

    .line 490
    .end local v0           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v1       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    .restart local v0       #bis:Lcn/yeeguo/YeeguoBase64$Base64InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter "serializableObject"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/yeeguo/YeeguoBase64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 12
    .parameter "serializableObject"
    .parameter "options"

    .prologue
    .line 122
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 124
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 126
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;

    or-int/lit8 v8, p1, 0x1

    invoke-direct {v1, v2, v8}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 128
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    and-int/lit8 v8, p1, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    :try_start_1
    new-instance v8, Ljava/io/ObjectOutputStream;

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v8

    .line 130
    :goto_0
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 131
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 140
    .local v6, str:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 149
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 154
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v0, v1

    .line 138
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v6           #str:Ljava/lang/String;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    :goto_4
    return-object v6

    .line 128
    .end local v0           #b64os:Ljava/io/OutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    move-object v5, v8

    goto :goto_0

    .line 143
    .restart local v6       #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ObjectOutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 150
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 151
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64OutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 156
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ByteArrayOutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 133
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #str:Ljava/lang/String;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    .line 134
    .local v7, ue:Ljava/io/UnsupportedEncodingException;
    :goto_5
    :try_start_6
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .local v3, e:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 142
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 147
    .end local v3           #e:Ljava/lang/String;
    :cond_3
    :goto_6
    if-eqz v0, :cond_4

    .line 149
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 154
    :cond_4
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_8
    move-object v6, v3

    .line 135
    goto :goto_4

    .line 143
    .restart local v3       #e:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 144
    .local v4, e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    .end local v3           #e:Ljava/lang/String;
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ObjectOutputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 150
    .end local v4           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 151
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64OutputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 155
    .end local v4           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 156
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ByteArrayOutputStream"

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 136
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #ue:Ljava/io/UnsupportedEncodingException;
    :catch_7
    move-exception v3

    .line 137
    .local v3, e:Ljava/io/IOException;
    :goto_9
    :try_start_a
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error encoding object"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 140
    if-eqz v5, :cond_5

    .line 142
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    :goto_a
    if-eqz v0, :cond_6

    .line 149
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 154
    :cond_6
    :goto_b
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 138
    :goto_c
    const/4 v6, 0x0

    goto :goto_4

    .line 143
    .restart local v3       #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 144
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ObjectOutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 150
    .end local v3           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v3

    .line 151
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing Base64OutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v3

    .line 156
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v8, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "error closing ByteArrayOutputStream"

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 139
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 140
    :goto_d
    if-eqz v5, :cond_7

    .line 142
    :try_start_e
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 147
    :cond_7
    :goto_e
    if-eqz v0, :cond_8

    .line 149
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 154
    :cond_8
    :goto_f
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 158
    :goto_10
    throw v8

    .line 143
    :catch_b
    move-exception v3

    .line 144
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing ObjectOutputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 150
    .end local v3           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v3

    .line 151
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing Base64OutputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v3

    .line 156
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "error closing ByteArrayOutputStream"

    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 139
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    goto :goto_d

    .line 136
    .end local v0           #b64os:Ljava/io/OutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    :catch_e
    move-exception v3

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    goto :goto_9

    .line 133
    .end local v0           #b64os:Ljava/io/OutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    :catch_f
    move-exception v7

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 8
    .parameter "dataToEncode"
    .parameter "filename"

    .prologue
    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, success:Z
    const/4 v0, 0x0

    .line 395
    .local v0, bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :try_start_0
    new-instance v1, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .local v1, bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 397
    const/4 v3, 0x1

    .line 402
    if-eqz v1, :cond_2

    .line 404
    :try_start_2
    invoke-virtual {v1}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 411
    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :cond_0
    :goto_0
    return v3

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error encoding file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    const/4 v3, 0x0

    .line 402
    if-eqz v0, :cond_0

    .line 404
    :try_start_4
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 405
    :catch_1
    move-exception v2

    .line 406
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "error closing Base64OutputStream"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 401
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 402
    :goto_2
    if-eqz v0, :cond_1

    .line 404
    :try_start_5
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoBase64$Base64OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 409
    :cond_1
    :goto_3
    throw v4

    .line 405
    :catch_2
    move-exception v2

    .line 406
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "error closing Base64OutputStream"

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 405
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catch_3
    move-exception v2

    .line 406
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v4, Lcn/yeeguo/YeeguoBase64;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "error closing Base64OutputStream"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_0

    .line 401
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_2

    .line 398
    .end local v0           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v1       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    .restart local v0       #bos:Lcn/yeeguo/YeeguoBase64$Base64OutputStream;
    goto :goto_1
.end method

.method protected static final getAlphabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 61
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_URL_SAFE_ALPHABET:[B

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 65
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method protected static final getDecodabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 73
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_URL_SAFE_DECODABET:[B

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 76
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcn/yeeguo/YeeguoBase64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
