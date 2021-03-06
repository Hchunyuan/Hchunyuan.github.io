<#include "module/macro.ftl">
<@head title="标签：${tag.name} · ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
    <div class="autopagerize_page_element">
        <div class="content">
            <#include "module/post_entry.ftl">
            <#if posts.totalPages gt 1>
                <div class="pagination">
                    <ul class="clearfix">
                        <#if posts.hasPrevious()>
                            <li class="pre pagbuttons">
                                <a class="btn" role="navigation" href="${prePageFullPath!}">上一页</a>
                            </li>
                        </#if>
                        <#if posts.hasNext()>
                            <li class="next pagbuttons">
                                <a class="btn" role="navigation" href="${nextPageFullPath!}">下一页</a>
                            </li>
                        </#if>
                    </ul>
                </div>
            </#if>
        </div>
    </div>
</div>
<@footer></@footer>
