.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$MatcherPos;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final DATE_TIME:I = 0x10

.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 126
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 149
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method public static final addLenovoLinks(Landroid/text/Spannable;I)Z
    .locals 13
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 262
    if-nez p1, :cond_0

    move v1, v11

    .line 315
    :goto_0
    return v1

    .line 266
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v11, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 268
    .local v10, "old":[Landroid/text/style/URLSpan;
    array-length v1, v10

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 269
    aget-object v1, v10, v7

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 268
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 272
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 275
    sget-object v2, Landroid/util/Patterns;->LENOVO_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v11

    const-string v1, "https://"

    aput-object v1, v3, v12

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 280
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 281
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    aput-object v1, v3, v11

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 286
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 287
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v1, "tel:"

    aput-object v1, v3, v11

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 292
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 293
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 296
    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v11

    .line 299
    goto :goto_0

    .line 302
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/util/LinkSpec;

    .line 304
    .local v9, "link":Landroid/text/util/LinkSpec;
    :try_start_0
    iget-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v9, Landroid/text/util/LinkSpec;->start:I

    iget v3, v9, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 305
    :catch_0
    move-exception v6

    .line 306
    .local v6, "e":Ljava/lang/Exception;
    iget v1, v9, Landroid/text/util/LinkSpec;->start:I

    iget-object v2, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 307
    iget-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 309
    :cond_8
    iget v1, v9, Landroid/text/util/LinkSpec;->end:I

    iget-object v2, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_7

    .line 310
    iget-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "link":Landroid/text/util/LinkSpec;
    :cond_9
    move v1, v12

    .line 315
    goto/16 :goto_0
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 498
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 499
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 503
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 519
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 540
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 544
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 212
    if-nez p1, :cond_0

    move v1, v10

    .line 254
    :goto_0
    return v1

    .line 216
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 218
    .local v9, "old":[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-nez v1, :cond_flyme_0

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->flymeGatherLinks(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    goto/16 :goto_flyme_0

    :cond_flyme_0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    :goto_flyme_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->flymeGatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)Z

    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_5
    invoke-static {p0, p1, v0}, Landroid/text/util/Linkify;->flymeGatherLinksDateTime(Landroid/text/Spannable;ILjava/util/ArrayList;)V

    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v10

    .line 247
    goto :goto_0

    .line 250
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/LinkSpec;

    .line 251
    .local v8, "link":Landroid/text/util/LinkSpec;
    iget-object v1, v8, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .end local v8    # "link":Landroid/text/util/LinkSpec;
    :cond_7
    move v1, v11

    .line 254
    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v9, 0x0

    .line 578
    const/4 v2, 0x0

    .line 579
    .local v2, "hasMatches":Z
    if-nez p2, :cond_2

    const-string v4, ""

    .line 580
    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 582
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 583
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 584
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 585
    .local v1, "end":I
    const/4 v0, 0x1

    .line 587
    .local v0, "allowed":Z
    if-eqz p3, :cond_1

    .line 588
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 591
    :cond_1
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 595
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 596
    const/4 v2, 0x1

    goto :goto_1

    .line 579
    .end local v0    # "allowed":Z
    .end local v1    # "end":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 600
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 468
    if-nez p1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v2

    .line 472
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 474
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 475
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 477
    goto :goto_0

    .line 482
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 484
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 486
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 488
    goto :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 604
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, "span":Landroid/text/style/URLSpan;
    if-le p1, p2, :cond_0

    .line 608
    move p1, p2

    .line 612
    :cond_0
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 613
    return-void
.end method

.method private static final gatherLenovoLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 33
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 328
    .local v16, "m":Ljava/util/regex/Matcher;
    const/16 v17, -0x1

    .line 329
    .local v17, "nLast_end":I
    const/16 v19, 0x0

    .line 330
    .local v19, "nlast_url_end":I
    const/16 v20, 0x0

    .line 331
    .local v20, "nlast_url_start":I
    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v24

    .line 332
    .local v24, "s_length":I
    const/4 v14, 0x0

    .line 333
    .local v14, "is_default":Z
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 334
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v26

    .line 335
    .local v26, "start":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    .line 336
    .local v10, "end":I
    if-eqz v14, :cond_1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 337
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 338
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 339
    .local v21, "nsize":I
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 340
    .local v28, "temp":Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 341
    .local v29, "tempurl":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "newurl":Ljava/lang/String;
    add-int/lit8 v31, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/text/util/LinkSpec;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 343
    add-int/lit8 v31, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/text/util/LinkSpec;

    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/util/LinkSpec;->end:I

    .line 347
    .end local v18    # "newurl":Ljava/lang/String;
    .end local v21    # "nsize":I
    .end local v28    # "temp":Ljava/lang/String;
    .end local v29    # "tempurl":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-interface {v0, v1, v2, v10}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 348
    :cond_2
    const/4 v14, 0x0

    .line 349
    new-instance v28, Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v28    # "temp":Ljava/lang/String;
    const-string v31, "(\uff0c|\u3001|\uff1b|\u3002)+[www.|http:]+"

    invoke-static/range {v31 .. v31}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 351
    .local v8, "domain_pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 352
    .local v7, "domain_match":Ljava/util/regex/Matcher;
    const/16 v22, 0x0

    .line 353
    .local v22, "offset":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v23, "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Linkify$MatcherPos;>;"
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 355
    const/4 v15, 0x1

    .line 357
    .local v15, "isfirst":Z
    :cond_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 358
    .local v9, "domain_start":I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 359
    .local v6, "domain_end":I
    new-instance v25, Landroid/text/util/LinkSpec;

    invoke-direct/range {v25 .. v25}, Landroid/text/util/LinkSpec;-><init>()V

    .line 360
    .local v25, "spec":Landroid/text/util/LinkSpec;
    if-eqz v15, :cond_5

    .line 361
    const-string/jumbo v31, "www."

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 362
    .local v13, "index":I
    if-le v9, v13, :cond_4

    .line 363
    new-instance v11, Landroid/text/util/Linkify$MatcherPos;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/text/util/Linkify$MatcherPos;-><init>(Landroid/text/util/Linkify$1;)V

    .line 364
    .local v11, "first_pos":Landroid/text/util/Linkify$MatcherPos;
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v11, Landroid/text/util/Linkify$MatcherPos;->start:I

    .line 365
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v11, Landroid/text/util/Linkify$MatcherPos;->end:I

    .line 366
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v11    # "first_pos":Landroid/text/util/Linkify$MatcherPos;
    :cond_4
    const/4 v15, 0x0

    .line 370
    .end local v13    # "index":I
    :cond_5
    new-instance v4, Landroid/text/util/Linkify$MatcherPos;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Landroid/text/util/Linkify$MatcherPos;-><init>(Landroid/text/util/Linkify$1;)V

    .line 371
    .local v4, "cur":Landroid/text/util/Linkify$MatcherPos;
    add-int/lit8 v31, v9, 0x1

    move/from16 v0, v31

    iput v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    .line 372
    add-int/lit8 v31, v9, 0x1

    move/from16 v0, v31

    iput v0, v4, Landroid/text/util/Linkify$MatcherPos;->end:I

    .line 373
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-nez v31, :cond_3

    .line 375
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    .line 376
    .local v5, "cur_end":I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v12, v31, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_a

    .line 377
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cur":Landroid/text/util/Linkify$MatcherPos;
    check-cast v4, Landroid/text/util/Linkify$MatcherPos;

    .line 378
    .restart local v4    # "cur":Landroid/text/util/Linkify$MatcherPos;
    new-instance v25, Landroid/text/util/LinkSpec;

    .end local v25    # "spec":Landroid/text/util/LinkSpec;
    invoke-direct/range {v25 .. v25}, Landroid/text/util/LinkSpec;-><init>()V

    .line 379
    .restart local v25    # "spec":Landroid/text/util/LinkSpec;
    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 380
    .local v27, "str_url":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 381
    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v31, v0

    add-int v31, v31, v26

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/LinkSpec;->start:I

    .line 382
    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/util/LinkSpec;->start:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/LinkSpec;->end:I

    .line 383
    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v31, v0

    add-int/lit8 v5, v31, -0x1

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 388
    .end local v4    # "cur":Landroid/text/util/Linkify$MatcherPos;
    .end local v5    # "cur_end":I
    .end local v6    # "domain_end":I
    .end local v9    # "domain_start":I
    .end local v12    # "i":I
    .end local v15    # "isfirst":Z
    .end local v25    # "spec":Landroid/text/util/LinkSpec;
    .end local v27    # "str_url":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x1

    .line 389
    new-instance v25, Landroid/text/util/LinkSpec;

    invoke-direct/range {v25 .. v25}, Landroid/text/util/LinkSpec;-><init>()V

    .line 390
    .restart local v25    # "spec":Landroid/text/util/LinkSpec;
    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v30

    .line 391
    .local v30, "url":Ljava/lang/String;
    move/from16 v17, v10

    .line 392
    move/from16 v0, v24

    if-le v0, v10, :cond_9

    .line 393
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 394
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->isSecondDomain(Landroid/text/Spannable;I)Z

    move-result v31

    if-nez v31, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->isNonAscUrlString(Landroid/text/Spannable;I)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 395
    :cond_7
    add-int/lit8 v17, v17, 0x2

    goto :goto_2

    .line 396
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/text/util/Linkify;->isUrlChar(C)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 397
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 403
    :cond_9
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 404
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/LinkSpec;->start:I

    .line 405
    move-object/from16 v0, v25

    iput v10, v0, Landroid/text/util/LinkSpec;->end:I

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v30    # "url":Ljava/lang/String;
    :cond_a
    move/from16 v20, v26

    .line 409
    move/from16 v19, v10

    goto/16 :goto_0

    .line 413
    .end local v7    # "domain_match":Ljava/util/regex/Matcher;
    .end local v8    # "domain_pattern":Ljava/util/regex/Pattern;
    .end local v10    # "end":I
    .end local v22    # "offset":I
    .end local v23    # "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Linkify$MatcherPos;>;"
    .end local v25    # "spec":Landroid/text/util/LinkSpec;
    .end local v26    # "start":I
    .end local v28    # "temp":Ljava/lang/String;
    :cond_b
    if-eqz v14, :cond_c

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 414
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 415
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 416
    .restart local v21    # "nsize":I
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v28    # "temp":Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 418
    .restart local v29    # "tempurl":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v18

    .line 419
    .restart local v18    # "newurl":Ljava/lang/String;
    add-int/lit8 v31, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/text/util/LinkSpec;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 420
    add-int/lit8 v31, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/text/util/LinkSpec;

    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/util/LinkSpec;->end:I

    .line 423
    .end local v18    # "newurl":Ljava/lang/String;
    .end local v21    # "nsize":I
    .end local v28    # "temp":Ljava/lang/String;
    .end local v29    # "tempurl":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 650
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 651
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 652
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 654
    .local v0, "end":I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    :cond_1
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    .line 656
    .local v2, "spec":Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 659
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    .line 660
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    .line 662
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    .end local v0    # "end":I
    .end local v2    # "spec":Landroid/text/util/LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 686
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 689
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 728
    .end local v0    # "address":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 693
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_1
    new-instance v6, Landroid/text/util/LinkSpec;

    invoke-direct {v6}, Landroid/text/util/LinkSpec;-><init>()V

    .line 694
    .local v6, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 695
    .local v5, "length":I
    add-int v4, v7, v5

    .line 697
    .local v4, "end":I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/LinkSpec;->start:I

    .line 698
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/LinkSpec;->end:I

    .line 699
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 700
    add-int/2addr v1, v4

    .line 702
    const/4 v3, 0x0

    .line 705
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 710
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 711
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 713
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "length":I
    .end local v6    # "spec":Landroid/text/util/LinkSpec;
    .end local v7    # "start":I
    :catch_0
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 706
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "encodedAddress":Ljava/lang/String;
    .restart local v4    # "end":I
    .restart local v5    # "length":I
    .restart local v6    # "spec":Landroid/text/util/LinkSpec;
    .restart local v7    # "start":I
    :catch_1
    move-exception v2

    .line 707
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 719
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "length":I
    .end local v6    # "spec":Landroid/text/util/LinkSpec;
    .end local v7    # "start":I
    :catch_2
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Linkify"

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 669
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 671
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 672
    .local v7, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    .line 673
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 674
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 675
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    .line 676
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    .end local v7    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_0
    return-void
.end method

.method private static isNonAscUrlString(Landroid/text/Spannable;I)Z
    .locals 9
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "nstart"    # I

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 448
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_6

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_6

    .line 449
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    .line 450
    .local v0, "c1":C
    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    .line 451
    .local v1, "c2":C
    if-lt v0, v8, :cond_0

    const/16 v2, 0x66

    if-le v0, v2, :cond_2

    :cond_0
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    :cond_2
    if-lt v1, v8, :cond_3

    const/16 v2, 0x66

    if-le v1, v2, :cond_5

    :cond_3
    if-lt v1, v6, :cond_4

    if-le v1, v7, :cond_5

    :cond_4
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    .line 453
    :cond_5
    const/4 v2, 0x1

    .line 456
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :goto_0
    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSecondDomain(Landroid/text/Spannable;I)Z
    .locals 8
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "nstart"    # I

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    .line 437
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_4

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    .line 438
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    .line 439
    .local v0, "c1":C
    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    .line 440
    .local v1, "c2":C
    if-lt v0, v6, :cond_0

    if-le v0, v7, :cond_1

    :cond_0
    if-lt v0, v4, :cond_4

    if-gt v0, v5, :cond_4

    :cond_1
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    .line 441
    :cond_3
    const/4 v2, 0x1

    .line 444
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isUrlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 426
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x26

    if-ne p0, v0, :cond_4

    .line 430
    :cond_3
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 617
    if-eqz p3, :cond_0

    .line 618
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 621
    :cond_0
    const/4 v7, 0x0

    .line 623
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 624
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    const/4 v7, 0x1

    .line 629
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 638
    :cond_1
    if-nez v7, :cond_2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 642
    :cond_2
    return-object p0

    .line 623
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .line 757
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 759
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 760
    .local v4, "len":I
    const/4 v3, 0x0

    .line 762
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 763
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 764
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 765
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 767
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 768
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 769
    add-int/lit8 v5, v3, 0x1

    .line 776
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 777
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 778
    add-int/lit8 v4, v4, -0x1

    .line 779
    goto :goto_0

    .line 770
    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 771
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 772
    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 773
    move v5, v3

    goto :goto_1

    .line 784
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 785
    goto :goto_0

    .line 786
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method

.method private static final flymeGatherLinks(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    sget-object v2, Landroid/util/MzPatterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "http://"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "https://"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "rtsp://"

    aput-object v1, v3, v0

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method private static final flymeGatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method private static final flymeGatherLinksDateTime(Landroid/text/Spannable;ILjava/util/ArrayList;)V
    .locals 6
    .param p0, "sTextSpannable"    # Landroid/text/Spannable;
    .param p1, "sMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    sget-object v2, Landroid/util/DateTimeUrlHelper;->DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "datetime:"

    aput-object v1, v3, v0

    sget-object v4, Landroid/util/DateTimeUrlHelper;->sDateTimeMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/util/DateTimeUrlHelper;->sDateTimeTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p2

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->flymeGatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_0
    return-void
.end method

.method private static final flymeGatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Landroid/util/MzPatterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v6, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v3, v0

    new-instance v4, Landroid/text/util/FlymePhoneNumberMatchFilter;

    invoke-direct {v4}, Landroid/text/util/FlymePhoneNumberMatchFilter;-><init>()V

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method static getPhoneNumberMinimumDigits()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    return v0
.end method
