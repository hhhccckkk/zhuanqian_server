.class public final Lcom/jy/func/u/a;
.super Ljava/lang/Object;
.source "AffineCipher.java"


# instance fields
.field private cD:I

.field private cE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "keyA"
    .parameter "keyB"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    add-int/lit8 v0, p1, 0x13

    iput v0, p0, Lcom/jy/func/u/a;->cD:I

    .line 26
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/jy/func/u/a;->cE:I

    .line 27
    return-void
.end method

.method private static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 63
    const-string v0, "h"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "i"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "j"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "o"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method private bS()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/jy/func/u/a;->cD:I

    return v0
.end method

.method private bT()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jy/func/u/a;->cE:I

    return v0
.end method

.method private h(I)V
    .locals 0
    .parameter "keyA"

    .prologue
    .line 50
    iput p1, p0, Lcom/jy/func/u/a;->cD:I

    .line 51
    return-void
.end method

.method private i(I)V
    .locals 0
    .parameter "keyB"

    .prologue
    .line 58
    iput p1, p0, Lcom/jy/func/u/a;->cE:I

    .line 59
    return-void
.end method


# virtual methods
.method public final bU()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    const-string v3, ""

    .line 74
    .local v3, result:Ljava/lang/String;
    const-string v4, "niqwqwqiqtqqntqynnqeqwqennnqqhqqqyqbqwntelqwqtqiqeqvqhhhqhqhqqqtqthhhhqvhkhnqwqvelqwqqqiqhqyqthkqnqthwhhqqqbhwqkqnhwqvelqwqnqietelqwqkqihohkeyelqwqhqieneyevhkelqwqeqintqeqnqvqwqnqhqqntqnqbqtqtntnqnhelqwqbqiqyqknhqnqqqvqnntnwqnqvnhqwqtnwnnelqwqyqihqhchielqvqinqqkqkqnntqtqeqwqkqwnqnwnqnhqwqnelqwqiqqqqqentnhqtnkqwnwqnqyqnqqqeqbqyelqtqiqenwqknhntqtqhqkqvnkqtqeqwqbnnnhelqqqiqnqvnqqkqyqtnhntnnnwqqqtqtnknqqwelqnqiqhnqnqqnqyqnqbnqntqkqhqwqbnknwqnelqkqiqtnwnnqeqbqhqkntqhqknnnkqkqknhnqelqhqiqyqyqbnwqhntqnqvntqwnkqqqbnkqbnqelqeqiqbqtqnnknqqkqyqqqtqqqyqqqhqtqkqwelqbqiqbnhqbqwqqqbqbqknhnkqtnhnkqtqvnnelqyqiqyhwqvhtqbqhqwqbqkqwhkqyqqhtqhqqelqtqvqiqnqtkoqbqktkqeqwkfnvqnqtqbqkqeqwqctrqntwqteitiqbthqkeoqetoqwkfqnqtkoqbqktkqeqwkfnvqnqtqbqkqeqwkiqneftbqbqknvqeqwqnqttrqbqkqeeoqwqntyqtqbeiqktyqeqwkoqnqtqbqkqetqqwqnqtqbtyqkqetkqwqnqttitbqbqkqwkoqeqnqttyqntyqtqbeiqktyqeqwkoqnqtqbqkqetqqwqnqtqbtyqkqetkqwqnqttiqbqkqwkoqeqnqttyelqwqvqihkhhqqhqqvqhqnhwqeqkqbhnhqhwqqqhel"

    .line 75
    .local v4, wordLower:Ljava/lang/String;
    iget v7, p0, Lcom/jy/func/u/a;->cD:I

    const/16 v8, 0x1a

    if-ltz v7, :cond_0

    if-le v7, v8, :cond_1

    :goto_0
    if-nez v8, :cond_3

    move v7, v6

    :goto_1
    if-ne v7, v5, :cond_4

    :goto_2
    if-nez v5, :cond_5

    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 75
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot compute the GCD if one integer is negative."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v9, v8

    move v8, v7

    move v7, v9

    goto :goto_0

    :cond_2
    rem-int/2addr v7, v8

    move v9, v8

    move v8, v7

    move v7, v9

    :cond_3
    if-nez v8, :cond_2

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    .line 77
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_6

    .line 86
    const-string v5, "h"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "i"

    const-string v7, "2"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "j"

    const-string v7, "3"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "k"

    const-string v7, "4"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "l"

    const-string v7, "5"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "m"

    const-string v7, "6"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "n"

    const-string v7, "7"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "o"

    const-string v7, "8"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "p"

    const-string v7, "9"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "q"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 87
    return-object v5

    .line 78
    :cond_6
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_7

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    if-le v5, v6, :cond_8

    .line 79
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 80
    :cond_8
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x61

    iget v6, p0, Lcom/jy/func/u/a;->cE:I

    sub-int v0, v5, v6

    .line 81
    .local v0, a:I
    if-gez v0, :cond_9

    add-int/lit8 v0, v0, 0x1a

    .line 82
    :cond_9
    iget v5, p0, Lcom/jy/func/u/a;->cD:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x1a

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int/2addr v5, v0

    .line 83
    rem-int/lit8 v5, v5, 0x1a

    add-int/lit8 v2, v5, 0x61

    .line 84
    .local v2, k:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method
