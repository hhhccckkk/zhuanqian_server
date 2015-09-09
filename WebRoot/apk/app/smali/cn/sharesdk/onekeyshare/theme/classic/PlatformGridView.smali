.class public Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;,
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    }
.end annotation


# static fields
.field private static final MIN_CLICK_INTERVAL:I = 0x3e8

.field private static final MSG_PLATFORM_LIST_GOT:I = 0x1


# instance fields
.field private COLUMN_PER_LINE:I

.field private LINE_PER_PAGE:I

.field private PAGE_SIZE:I

.field private bgView:Landroid/view/View;

.field private bluePoint:Landroid/graphics/Bitmap;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private grayPoint:Landroid/graphics/Bitmap;

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickTime:J

.field private pager:Lcom/mob/tools/gui/ViewPagerClassic;

.field private parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private points:[Landroid/widget/ImageView;

.field private reqData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    return v0
.end method

.method static synthetic access$4(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    return v0
.end method

.method static synthetic access$5(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-void
.end method

.method private calPageSize()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 106
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v1, v3

    .line 107
    .local v1, scrW:F
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/R;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v0, v3

    .line 108
    .local v0, scrH:F
    div-float v2, v1, v0

    .line 109
    .local v2, whR:F
    float-to-double v3, v2

    const-wide v5, 0x3fe428f5c28f5c29L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 110
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 111
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 127
    :goto_0
    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    .line 128
    return-void

    .line 112
    :cond_0
    float-to-double v3, v2

    const-wide/high16 v5, 0x3fe8

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 113
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 114
    const/4 v3, 0x2

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    goto :goto_0

    .line 116
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 117
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ffc

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 118
    const/4 v3, 0x6

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 119
    :cond_2
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 120
    const/4 v3, 0x5

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 121
    :cond_3
    float-to-double v3, v2

    const-wide v5, 0x3ff4cccccccccccdL

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 122
    const/4 v3, 0x4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 124
    :cond_4
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 242
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setOverScrollMode"

    .line 247
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 246
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 248
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 249
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v0           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 251
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setOrientation(I)V

    .line 84
    new-instance v0, Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    .line 85
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->disableOverScrollMode(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 102
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 17

    .prologue
    .line 142
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 143
    .local v1, adapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v15, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, pageCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-eqz v15, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    if-nez v15, :cond_1

    const/4 v4, 0x0

    .line 147
    .local v4, cusSize:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v15, :cond_2

    const/4 v12, 0x0

    .line 148
    .local v12, platSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    if-nez v15, :cond_3

    const/4 v6, 0x0

    .line 149
    .local v6, hideSize:I
    :goto_2
    sub-int/2addr v12, v6

    .line 150
    add-int v14, v12, v4

    .line 151
    .local v14, size:I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v11, v14, v15

    .line 152
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    rem-int v15, v14, v15

    if-lez v15, :cond_0

    .line 153
    add-int/lit8 v11, v11, 0x1

    .line 156
    .end local v4           #cusSize:I
    .end local v6           #hideSize:I
    .end local v12           #platSize:I
    .end local v14           #size:I
    :cond_0
    new-array v15, v11, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    array-length v15, v15

    if-gtz v15, :cond_4

    .line 191
    :goto_3
    return-void

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 147
    .restart local v4       #cusSize:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v12, v15

    goto :goto_1

    .line 148
    .restart local v12       #platSize:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    goto :goto_2

    .line 161
    .end local v4           #cusSize:I
    .end local v12           #platSize:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 162
    .local v2, context:Landroid/content/Context;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v8, llPoints:Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    if-le v11, v15, :cond_7

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    const/4 v15, -0x2

    const/16 v16, -0x2

    .line 165
    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v10, lpLl:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x1

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 171
    const/4 v15, 0x5

    invoke-static {v2, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 172
    .local v5, dp_5:I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "light_blue_point"

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 173
    .local v13, resId:I
    if-lez v13, :cond_5

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    .line 176
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "blue_point"

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 177
    if-lez v13, :cond_6

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    .line 180
    :cond_6
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    if-lt v7, v11, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v15}, Lcom/mob/tools/gui/ViewPagerClassic;->getCurrentScreen()I

    move-result v3

    .line 190
    .local v3, curPage:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 164
    .end local v3           #curPage:I
    .end local v5           #dp_5:I
    .end local v7           #i:I
    .end local v10           #lpLl:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #resId:I
    :cond_7
    const/16 v15, 0x8

    goto :goto_4

    .line 181
    .restart local v5       #dp_5:I
    .restart local v7       #i:I
    .restart local v10       #lpLl:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #resId:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v16, v15, v7

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v9, lpIv:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x0

    invoke-virtual {v9, v5, v5, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 230
    .local v1, time:J
    iget-wide v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-wide v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v0, platforms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    invoke-virtual {v3, p1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onPlatformIconClick(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v2}, Lcom/mob/tools/gui/ViewPagerClassic;->getCurrentScreen()I

    move-result v2

    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    mul-int v0, v2, v3

    .line 196
    .local v0, curFirst:I
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 197
    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v1, v0, v2

    .line 199
    .local v1, newPage:I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->removeViewAt(I)V

    .line 200
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    .line 202
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v2, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setCurrentScreen(I)V

    .line 203
    return-void
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, customers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    .line 217
    return-void
.end method

.method public setData(Ljava/util/HashMap;Z)V
    .locals 0
    .parameter
    .parameter "silent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->reqData:Ljava/util/HashMap;

    .line 207
    iput-boolean p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->silent:Z

    .line 208
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .parameter "bgView"

    .prologue
    .line 220
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bgView:Landroid/view/View;

    .line 221
    return-void
.end method

.method public setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, hiddenPlatforms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    .line 212
    return-void
.end method

.method public setParent(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 225
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .line 226
    return-void
.end method
