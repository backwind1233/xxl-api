<!DOCTYPE html>
<html>
<head>
  	<title>API管理平台</title>
    <link rel="shortcut icon" href="${request.contextPath}/favicon.ico" type="image/x-icon" />
  	<#import "/apihome/common/common.macro.ftl" as netCommon>
    <link rel="stylesheet" href="${request.contextPath}/resources/apihome/adminlte/plugins/select2/select2.min.css">
	<@netCommon.commonStyle />

</head>
<body class="hold-transition skin-blue sidebar-mini <#if cookieMap?exists && "off" == cookieMap["adminlte_settings"].value >sidebar-collapse</#if>">
<div class="wrapper">
	<!-- header -->
	<@netCommon.commonHeader />
	<!-- left -->
	<@netCommon.commonLeft "datatype" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>新增数据类型<small>API管理平台</small></h1>
		</section>

        <section class="content">
            <form class="form-horizontal" id="datatypeForm" >
                <input type="hidden" name="projectId" value="${productId}" >

                <#--基础信息-->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">基础信息</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-info btn-xs" type="submit" >保存数据类型</button>
                        </div>
                    </div>

                    <div class="box-body">
                        <div class="form-group">
                            <label class="col-sm-1 control-label">业务线</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="bizId" >
                                    <option value="0" >公共</option>
                                    <#if bizList?exists && bizList?size gt 0>
                                        <#list bizList as biz>
                                            <option value="${biz.id}"  >${biz.bizName}</option>
                                        </#list>
                                    </#if>
                                </select>
                            </div>
                            <label class="col-sm-1 control-label">名称</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="name" placeholder="请输入数据类型名称" maxlength="100" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-1 control-label">描述</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="about" placeholder="请输入数据类型描述" maxlength="200" >
                            </div>
                        </div>

                    </div>
                </div>

                <#-- 字段列表 -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">字段列表</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" id="queryParams_add" ><i class="fa fa-plus"></i></button>
                        </div>
                    </div>

                    <div id="queryParams_example" style="display: none;" >
                        <div class="form-group queryParams_item" >
                            <label class="col-sm-1 control-label">字段名称</label>
                            <div class="col-sm-2 item">
                                <input type="text" class="form-control fieldName">
                            </div>
                            <label class="col-sm-1 control-label">数据类型</label>
                            <div class="col-sm-2 item">
                                <select class="form-control select2_tag_new fieldDatatypeId" style="width: 100%;">
                                </select>
                            </div>
                            <div class="col-sm-2 item">
                                <select class="form-control select2_tag_new fieldType" style="width: 100%;">
                                    <option value="0">默认</option>
                                    <option value="1">数组</option>
                                </select>
                            </div>
                            <label class="col-sm-1 control-label">描述</label>
                            <div class="col-sm-2 item">
                                <input type="text" class="form-control fieldAbout">
                            </div>
                            <button type="button" class="col-sm-1 btn btn-box-tool delete" ><i class="fa fa-fw fa-close"></i></button>
                        </div>
                    </div>

                    <div class="box-body" id="queryParams_parent" >
                    </div>
                </div>

            </form>

        </section>

	</div>

	<!-- footer -->
	<@netCommon.commonFooter />
</div>

<@netCommon.commonScript />

<script src="${request.contextPath}/resources/apihome/adminlte/plugins/select2/select2.min.js"></script>
<script src="${request.contextPath}/resources/apihome/plugins/jquery/jquery.validate.min.js"></script>
<script src="${request.contextPath}/resources/apihome/js/datatype.add.1.js"></script>
</body>
</html>