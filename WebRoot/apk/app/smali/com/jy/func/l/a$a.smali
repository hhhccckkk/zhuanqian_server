.class final Lcom/jy/func/l/a$a;
.super Ljava/lang/Object;
.source "CYZ_ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field aI:Landroid/widget/ImageView;

.field aJ:Landroid/widget/TextView;

.field aK:Landroid/widget/TextView;

.field aL:Landroid/widget/TextView;

.field aM:Landroid/widget/TextView;

.field private synthetic aN:Lcom/jy/func/l/a;


# direct methods
.method private constructor <init>(Lcom/jy/func/l/a;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/jy/func/l/a$a;->aI:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/jy/func/l/a$a;->aJ:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/jy/func/l/a$a;->aK:Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/jy/func/l/a$a;->aL:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/jy/func/l/a$a;->aM:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jy/func/l/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/jy/func/l/a$a;-><init>(Lcom/jy/func/l/a;)V

    return-void
.end method
