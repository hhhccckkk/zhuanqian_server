.class final Lcom/jy/func/JYOfferActivity$1;
.super Ljava/lang/Object;
.source "JYOfferActivity.java"

# interfaces
.implements Lcom/jy/func/v/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/JYOfferActivity;->SignOutDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic at:Lcom/jy/func/JYOfferActivity;


# direct methods
.method constructor <init>(Lcom/jy/func/JYOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/JYOfferActivity$1;->at:Lcom/jy/func/JYOfferActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jy/func/v/a;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/jy/func/v/a;->dismiss()V

    .line 201
    return-void
.end method

.method public final b(Lcom/jy/func/v/a;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/jy/func/v/a;->dismiss()V

    .line 210
    iget-object v1, p0, Lcom/jy/func/JYOfferActivity$1;->at:Lcom/jy/func/JYOfferActivity;

    invoke-virtual {v1}, Lcom/jy/func/JYOfferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    invoke-static {v1}, Lcom/jy/func/t/b;->c(Landroid/content/Context;)Lcom/jy/func/t/b;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/jy/func/t/b;->bh()Lcom/jy/func/lner/SignOutListener;

    move-result-object v0

    .line 211
    .local v0, SignOutLner:Lcom/jy/func/lner/SignOutListener;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/jy/func/lner/SignOutListener;->onResponse()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/jy/func/JYOfferActivity$1;->at:Lcom/jy/func/JYOfferActivity;

    invoke-virtual {v1}, Lcom/jy/func/JYOfferActivity;->finish()V

    .line 216
    return-void
.end method
