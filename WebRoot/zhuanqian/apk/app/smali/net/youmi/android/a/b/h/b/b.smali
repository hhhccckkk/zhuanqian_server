.class Lnet/youmi/android/a/b/h/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lnet/youmi/android/a/b/h/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "create table if not exists %s (%s varchar primary key, %s varchar, %s varchar, %s varchar, %s varchar, %s varchar, %s varchar);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sv"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "gt"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "v0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "v1"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "v2"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "v3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "v4"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "v5"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, "drop table if exists %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sv"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/youmi/android/a/b/h/b/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
