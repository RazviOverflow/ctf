.class Lcom/google/common/collect/FilteredEntryMultimap$Keys;
.super Lcom/google/common/collect/Multimaps$Keys;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Keys<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;)V
    .locals 0

    .line 330
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$Keys;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.Keys;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    .line 331
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;-><init>(Lcom/google/common/collect/Multimap;)V

    .line 332
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$Keys;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.Keys;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 336
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$Keys;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.Keys;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 337
    if-nez p2, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 341
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 342
    const/4 v1, 0x0

    return v1

    .line 345
    :cond_1
    move-object v1, p1

    .line 346
    .local v1, "k":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 347
    .local v2, "oldCount":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 348
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 350
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {v5, v1, v4}, Lcom/google/common/collect/FilteredEntryMultimap;->access$000(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 351
    add-int/lit8 v2, v2, 0x1

    .line 352
    if-gt v2, p2, :cond_2

    .line 353
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 356
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    goto :goto_0

    .line 357
    :cond_3
    return v2
.end method
