.class public final Lcom/jy/func/b;
.super Ljava/lang/Object;
.source "CYZHttpUtil.java"


# static fields
.field private static j:Lcom/jy/func/w/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/jy/func/w/a;

    invoke-direct {v0}, Lcom/jy/func/w/a;-><init>()V

    .line 14
    sput-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    const/16 v1, 0x2af8

    invoke-virtual {v0, v1}, Lcom/jy/func/w/a;->setTimeout(I)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/jy/func/w/c;)V
    .locals 1
    .parameter "u"
    .parameter "r"

    .prologue
    .line 35
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1}, Lcom/jy/func/w/a;->b(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 36
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/jy/func/w/h;)V
    .locals 1
    .parameter "u"
    .parameter "r"

    .prologue
    .line 30
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1}, Lcom/jy/func/w/a;->b(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/c;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "responseHandler"

    .prologue
    .line 46
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jy/func/w/a;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V
    .locals 1
    .parameter "u"
    .parameter "p"
    .parameter "r"

    .prologue
    .line 19
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jy/func/w/a;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 20
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/c;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "responseHandler"

    .prologue
    .line 50
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jy/func/w/a;->c(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 51
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V
    .locals 1
    .parameter "u"
    .parameter "p"
    .parameter "r"

    .prologue
    .line 26
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jy/func/w/a;->c(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    .line 27
    return-void
.end method

.method private static i()Lcom/jy/func/w/a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/jy/func/b;->j:Lcom/jy/func/w/a;

    return-object v0
.end method
