<%@ include file="/common/taglibs.jsp"%>

<head>
	<title>New API Key</title>
</head>

<body>
	<h2>New API Key</h2>
	
	<spring:url value="" var="emptyUrl"></spring:url>	
	<form:form modelAttribute="apiKey" method="post" action="${fn:escapeXml(emptyUrl)}">
		<table class="dataTable">
			<tbody>
				<tr>
					<td class="label">Note (optional) </td>
					<td class="inputValue">
						<form:input path="note" cssClass="focus" size="70" maxlength="255" value="${ note }" />
					</td>
					<td style="padding-left:5px">
						<form:errors path="note" cssClass="errors" />
					</td>
				</tr>
				<tr>
					<td class="label">Restricted?</td>
					<td class="inputValue">
						<form:checkbox path="isRestrictedKey"/>
					</td>
					<td style="padding-left:5px">
						<form:errors path="isRestrictedKey" cssClass="errors" />
					</td>
				</tr>
			</tbody>
		</table>
		<br/>
		<input id="createApiKeyButton" type="submit" value="Create API Key" />
		<span style="padding-left: 10px"><a href="<spring:url value="/configuration/keys"/>">Back to API Key Index</a></span>
	</form:form>
</body>
