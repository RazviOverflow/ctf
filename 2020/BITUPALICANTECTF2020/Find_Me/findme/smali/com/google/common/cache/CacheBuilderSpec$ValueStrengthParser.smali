.class Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueStrengthParser"
.end annotation


# instance fields
.field private final strength:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Strength;)V
    .locals 0
    .param p1, "strength"    # Lcom/google/common/cache/LocalCache$Strength;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    .line 384
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 388
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "key %s does not take values"

    invoke-static {v2, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v2, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    iget-object v1, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v1, v3, v0

    const-string v0, "%s was already set to %s"

    invoke-static {v2, v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 393
    return-void
.end method
