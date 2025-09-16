--- 
title: service_members
hide_title: false
hide_table_of_contents: false
keywords:
  - service_members
  - ad_hybrid_health_service
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>service_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_members</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.service_members" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

The specific service member.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="activeAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total number of alerts that are currently active for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>string</code></td>
    <td>The additional information, if any, for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date time , in UTC, when the server was onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="dimensions" /></td>
    <td><code>object</code></td>
    <td>The server specific configuration related dimensions.</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the server is disabled or not. </td>
</tr>
<tr>
    <td><CopyableCode code="disabledReason" /></td>
    <td><code>integer</code></td>
    <td>The reason for disabling the server.</td>
</tr>
<tr>
    <td><CopyableCode code="installedQfes" /></td>
    <td><code>object</code></td>
    <td>The list of installed QFEs for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="lastDisabled" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time , in UTC, when the server was last disabled.</td>
</tr>
<tr>
    <td><CopyableCode code="lastReboot" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server was last rebooted.</td>
</tr>
<tr>
    <td><CopyableCode code="lastServerReportedMonitoringLevelChange" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server's data monitoring configuration was last changed.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server properties were last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="machineId" /></td>
    <td><code>string</code></td>
    <td>The id of the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsComputed" /></td>
    <td><code>object</code></td>
    <td>The monitoring configuration of the server which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsCustomized" /></td>
    <td><code>object</code></td>
    <td>The customized monitoring configuration of the server which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="osName" /></td>
    <td><code>string</code></td>
    <td>The name of the operating system installed in the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="osVersion" /></td>
    <td><code>string</code></td>
    <td>The version of the operating system installed in the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Server specific properties.</td>
</tr>
<tr>
    <td><CopyableCode code="recommendedQfes" /></td>
    <td><code>object</code></td>
    <td>The list of recommended hotfixes for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total count of alerts that are resolved for this server.</td>
</tr>
<tr>
    <td><CopyableCode code="role" /></td>
    <td><code>string</code></td>
    <td>The service role that is being monitored in the server.</td>
</tr>
<tr>
    <td><CopyableCode code="serverReportedMonitoringLevel" /></td>
    <td><code>string</code></td>
    <td>The monitoring level reported by the server.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The service id to whom this server belongs.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string</code></td>
    <td>The id of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The health status of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant id to whom this server belongs.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The list of service members.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="activeAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total number of alerts that are currently active for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>string</code></td>
    <td>The additional information, if any, for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date time , in UTC, when the server was onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="dimensions" /></td>
    <td><code>object</code></td>
    <td>The server specific configuration related dimensions.</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the server is disabled or not. </td>
</tr>
<tr>
    <td><CopyableCode code="disabledReason" /></td>
    <td><code>integer</code></td>
    <td>The reason for disabling the server.</td>
</tr>
<tr>
    <td><CopyableCode code="installedQfes" /></td>
    <td><code>object</code></td>
    <td>The list of installed QFEs for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="lastDisabled" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time , in UTC, when the server was last disabled.</td>
</tr>
<tr>
    <td><CopyableCode code="lastReboot" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server was last rebooted.</td>
</tr>
<tr>
    <td><CopyableCode code="lastServerReportedMonitoringLevelChange" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server's data monitoring configuration was last changed.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the server properties were last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="machineId" /></td>
    <td><code>string</code></td>
    <td>The id of the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsComputed" /></td>
    <td><code>object</code></td>
    <td>The monitoring configuration of the server which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsCustomized" /></td>
    <td><code>object</code></td>
    <td>The customized monitoring configuration of the server which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="osName" /></td>
    <td><code>string</code></td>
    <td>The name of the operating system installed in the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="osVersion" /></td>
    <td><code>string</code></td>
    <td>The version of the operating system installed in the machine.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Server specific properties.</td>
</tr>
<tr>
    <td><CopyableCode code="recommendedQfes" /></td>
    <td><code>object</code></td>
    <td>The list of recommended hotfixes for the server.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total count of alerts that are resolved for this server.</td>
</tr>
<tr>
    <td><CopyableCode code="role" /></td>
    <td><code>string</code></td>
    <td>The service role that is being monitored in the server.</td>
</tr>
<tr>
    <td><CopyableCode code="serverReportedMonitoringLevel" /></td>
    <td><code>string</code></td>
    <td>The monitoring level reported by the server.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The service id to whom this server belongs.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string</code></td>
    <td>The id of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The health status of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant id to whom this server belongs.</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td></td>
    <td>Gets the details of a server, for a given service, that are onboarded to Azure Active Directory Connect Health Service.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-dimensionType"><code>dimensionType</code></a>, <a href="#parameter-dimensionSignature"><code>dimensionSignature</code></a></td>
    <td>Gets the details of the servers, for a given service, that are onboarded to Azure Active Directory Connect Health Service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td><a href="#parameter-confirm"><code>confirm</code></a></td>
    <td>Deletes a server that has been onboarded to Azure Active Directory Connect Health Service.</td>
</tr>
<tr>
    <td><a href="#add"><CopyableCode code="add" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Onboards  a server, for a given service, to Azure Active Directory Connect Health Service.</td>
</tr>
<tr>
    <td><a href="#delete_data"><CopyableCode code="delete_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td></td>
    <td>Deletes the data uploaded by the server to Azure Active Directory Connect Health Service.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-serviceMemberId">
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The server Id.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The server property filter to apply.</td>
</tr>
<tr id="parameter-confirm">
    <td><CopyableCode code="confirm" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the server will be permanently deleted or disabled. True indicates that the server will be permanently deleted and False indicates that the server will be marked disabled and then deleted after 30 days, if it is not re-registered.</td>
</tr>
<tr id="parameter-dimensionSignature">
    <td><CopyableCode code="dimensionSignature" /></td>
    <td><code>string</code></td>
    <td>The value of the dimension.</td>
</tr>
<tr id="parameter-dimensionType">
    <td><CopyableCode code="dimensionType" /></td>
    <td><code>string</code></td>
    <td>The server specific dimension.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the details of a server, for a given service, that are onboarded to Azure Active Directory Connect Health Service.

```sql
SELECT
activeAlerts,
additionalInformation,
createdDate,
dimensions,
disabled,
disabledReason,
installedQfes,
lastDisabled,
lastReboot,
lastServerReportedMonitoringLevelChange,
lastUpdated,
machineId,
machineName,
monitoringConfigurationsComputed,
monitoringConfigurationsCustomized,
osName,
osVersion,
properties,
recommendedQfes,
resolvedAlerts,
role,
serverReportedMonitoringLevel,
serviceId,
serviceMemberId,
status,
tenantId
FROM azure.ad_hybrid_health_service.service_members
WHERE serviceName = '{{ serviceName }}' -- required
AND serviceMemberId = '{{ serviceMemberId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the details of the servers, for a given service, that are onboarded to Azure Active Directory Connect Health Service.

```sql
SELECT
activeAlerts,
additionalInformation,
createdDate,
dimensions,
disabled,
disabledReason,
installedQfes,
lastDisabled,
lastReboot,
lastServerReportedMonitoringLevelChange,
lastUpdated,
machineId,
machineName,
monitoringConfigurationsComputed,
monitoringConfigurationsCustomized,
osName,
osVersion,
properties,
recommendedQfes,
resolvedAlerts,
role,
serverReportedMonitoringLevel,
serviceId,
serviceMemberId,
status,
tenantId
FROM azure.ad_hybrid_health_service.service_members
WHERE serviceName = '{{ serviceName }}' -- required
AND $filter = '{{ $filter }}'
AND dimensionType = '{{ dimensionType }}'
AND dimensionSignature = '{{ dimensionSignature }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes a server that has been onboarded to Azure Active Directory Connect Health Service.

```sql
DELETE FROM azure.ad_hybrid_health_service.service_members
WHERE serviceName = '{{ serviceName }}' --required
AND serviceMemberId = '{{ serviceMemberId }}' --required
AND confirm = '{{ confirm }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add"
    values={[
        { label: 'add', value: 'add' },
        { label: 'delete_data', value: 'delete_data' }
    ]}
>
<TabItem value="add">

Onboards  a server, for a given service, to Azure Active Directory Connect Health Service.

```sql
EXEC azure.ad_hybrid_health_service.service_members.add 
@serviceName='{{ serviceName }}' --required 
@@json=
'{
"serviceMemberId": "{{ serviceMemberId }}", 
"serviceId": "{{ serviceId }}", 
"tenantId": "{{ tenantId }}", 
"activeAlerts": {{ activeAlerts }}, 
"additionalInformation": "{{ additionalInformation }}", 
"createdDate": "{{ createdDate }}", 
"dimensions": "{{ dimensions }}", 
"disabled": {{ disabled }}, 
"disabledReason": {{ disabledReason }}, 
"installedQfes": "{{ installedQfes }}", 
"lastDisabled": "{{ lastDisabled }}", 
"lastReboot": "{{ lastReboot }}", 
"lastServerReportedMonitoringLevelChange": "{{ lastServerReportedMonitoringLevelChange }}", 
"lastUpdated": "{{ lastUpdated }}", 
"machineId": "{{ machineId }}", 
"machineName": "{{ machineName }}", 
"monitoringConfigurationsComputed": "{{ monitoringConfigurationsComputed }}", 
"monitoringConfigurationsCustomized": "{{ monitoringConfigurationsCustomized }}", 
"osName": "{{ osName }}", 
"osVersion": "{{ osVersion }}", 
"properties": "{{ properties }}", 
"recommendedQfes": "{{ recommendedQfes }}", 
"resolvedAlerts": {{ resolvedAlerts }}, 
"role": "{{ role }}", 
"serverReportedMonitoringLevel": "{{ serverReportedMonitoringLevel }}", 
"status": "{{ status }}"
}'
;
```
</TabItem>
<TabItem value="delete_data">

Deletes the data uploaded by the server to Azure Active Directory Connect Health Service.

```sql
EXEC azure.ad_hybrid_health_service.service_members.delete_data 
@serviceName='{{ serviceName }}' --required, 
@serviceMemberId='{{ serviceMemberId }}' --required
;
```
</TabItem>
</Tabs>
