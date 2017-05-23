<div class="nav"> 
    <div class="wrapper fn-clear">
        <div class="head-fn fn-left">
            <h1>
                <a href="${servePath}" aria-label="黑客派" class="tooltipped tooltipped-s">
                    <svg class="svg-icon"><use xlink:href="${servePath}/css/symbol-defs.svg#logo"></use></svg>
                </a>
            </h1>
        </div>

        <div class="fn-right user-nav">
            <#if isLoggedIn>
            <#if permissions["menuAdmin"].permissionGrant>
            <a href="${servePath}/admin" title="${adminLabel}" class="last"><svg class="svg-icon"><use xlink:href="${servePath}/css/symbol-defs.svg#userrole"></use></svg></a>
            </#if>
            <a href="${servePath}/member/${currentUser.userName}" title="Home" class="<#if 'adminRole' != userRole>last </#if>nav-avatar">
                <span class="avatar-small" style="background-image:url('${currentUser.userAvatarURL20}')"></span>
            </a>
            <a href="${servePath}/activities" title="${activityLabel}"><svg class="svg-icon"><use xlink:href="${servePath}/css/symbol-defs.svg#flag"></use></svg></a>
            <#if permissions["commonAddArticle"].permissionGrant>
                <a href="${servePath}/pre-post" title="${addArticleLabel}"><svg class="svg-icon"><use xlink:href="${servePath}/css/symbol-defs.svg#addfile"></use></svg></a>
            </#if>
            <a id="aNotifications" class="<#if unreadNotificationCount == 0>no-msg<#else>msg</#if>" href="${servePath}/notifications" title="${messageLabel}">${unreadNotificationCount}</a>
            <a href="${servePath}/recent" class="icon-refresh"></a>
            <#else>
            <a id="aRegister" href="javascript:Util.goRegister()" class="last ft-blue unlogin" 
               title="${registerLabel}">${registerLabel}</a>
            <a href="javascript: Util.goLogin();" title="${loginLabel}" class="unlogin">${loginLabel}</a>
            </#if>
        </div>
    </div>
</div>
