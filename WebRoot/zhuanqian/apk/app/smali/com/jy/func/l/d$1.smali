.class final Lcom/jy/func/l/d$1;
.super Ljava/lang/Object;
.source "CYZ_ListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/l/d;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic br:Lcom/jy/func/l/d;


# direct methods
.method constructor <init>(Lcom/jy/func/l/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/l/d$1;->br:Lcom/jy/func/l/d;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jy/func/l/d$1;->br:Lcom/jy/func/l/d;

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aZ()V

    .line 152
    return-void
.end method
