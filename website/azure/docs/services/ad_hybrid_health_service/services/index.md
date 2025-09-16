--- 
title: services
hide_title: false
hide_table_of_contents: false
keywords:
  - services
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

Creates, updates, deletes, gets or lists a <code>services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services" /></td></tr>
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

The list of services.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The id of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="activeAlerts" /></td>
    <td><code>integer</code></td>
    <td>The count of alerts that are currently active for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>string</code></td>
    <td>The additional information related to the service.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the service was onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="customNotificationEmails" /></td>
    <td><code>array</code></td>
    <td>The list of additional emails that are configured to receive notifications about the service.</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the service is disabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="health" /></td>
    <td><code>string</code></td>
    <td>The health of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="lastDisabled" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the service was last disabled.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date or time , in UTC, when the service properties were last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsComputed" /></td>
    <td><code>object</code></td>
    <td>The monitoring configuration of the service which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsCustomized" /></td>
    <td><code>object</code></td>
    <td>The customized monitoring configuration of the service which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailEnabledForGlobalAdmins" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled for global administrators of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmails" /></td>
    <td><code>array</code></td>
    <td>The list of emails to whom service notifications will be sent.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailsEnabledForGlobalAdmins" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled for global administrators of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="originalDisabledState" /></td>
    <td><code>boolean</code></td>
    <td>Gets the original disable state.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total count of alerts that has been resolved for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The id of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="signature" /></td>
    <td><code>string</code></td>
    <td>The signature of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="simpleProperties" /></td>
    <td><code>object</code></td>
    <td>List of service specific configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The id of the tenant to which the service is registered to.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The service type for the services onboarded to Azure Active Directory Connect Health. Depending on whether the service is monitoring, ADFS, Sync or ADDS roles, the service type can either be AdFederationService or AadSyncService or AdDomainService.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The list of services.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The id of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="activeAlerts" /></td>
    <td><code>integer</code></td>
    <td>The count of alerts that are currently active for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>string</code></td>
    <td>The additional information related to the service.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the service was onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="customNotificationEmails" /></td>
    <td><code>array</code></td>
    <td>The list of additional emails that are configured to receive notifications about the service.</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the service is disabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="health" /></td>
    <td><code>string</code></td>
    <td>The health of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="lastDisabled" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the service was last disabled.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date or time , in UTC, when the service properties were last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsComputed" /></td>
    <td><code>object</code></td>
    <td>The monitoring configuration of the service which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoringConfigurationsCustomized" /></td>
    <td><code>object</code></td>
    <td>The customized monitoring configuration of the service which determines what activities are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailEnabledForGlobalAdmins" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled for global administrators of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmails" /></td>
    <td><code>array</code></td>
    <td>The list of emails to whom service notifications will be sent.</td>
</tr>
<tr>
    <td><CopyableCode code="notificationEmailsEnabledForGlobalAdmins" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if email notification is enabled for global administrators of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="originalDisabledState" /></td>
    <td><code>boolean</code></td>
    <td>Gets the original disable state.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total count of alerts that has been resolved for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The id of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="signature" /></td>
    <td><code>string</code></td>
    <td>The signature of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="simpleProperties" /></td>
    <td><code>object</code></td>
    <td>List of service specific configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The id of the tenant to which the service is registered to.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The service type for the services onboarded to Azure Active Directory Connect Health. Depending on whether the service is monitoring, ADFS, Sync or ADDS roles, the service type can either be AdFederationService or AadSyncService or AdDomainService.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Gets the details of a service for a tenant having Azure AD Premium license and is onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-serviceType"><code>serviceType</code></a>, <a href="#parameter-skipCount"><code>skipCount</code></a>, <a href="#parameter-takeCount"><code>takeCount</code></a></td>
    <td>Gets the details of services, for a tenant, that are onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Updates the service properties of an onboarded service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-confirm"><code>confirm</code></a></td>
    <td>Deletes a service which is onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#add"><CopyableCode code="add" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Onboards a service for a given tenant in Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#add_alert_feedback"><CopyableCode code="add_alert_feedback" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Adds an alert feedback submitted by customer.</td>
</tr>
<tr>
    <td><a href="#update_monitoring_configuration"><CopyableCode code="update_monitoring_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Updates the service level monitoring configuration.</td>
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
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The service property filter to apply.</td>
</tr>
<tr id="parameter-confirm">
    <td><CopyableCode code="confirm" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the service will be permanently deleted or disabled. True indicates that the service will be permanently deleted and False indicates that the service will be marked disabled and then deleted after 30 days, if it is not re-registered.</td>
</tr>
<tr id="parameter-serviceType">
    <td><CopyableCode code="serviceType" /></td>
    <td><code>string</code></td>
    <td>The service type for the services onboarded to Azure Active Directory Connect Health. Depending on whether the service is monitoring, ADFS, Sync or ADDS roles, the service type can either be AdFederationService or AadSyncService or AdDomainService.</td>
</tr>
<tr id="parameter-skipCount">
    <td><CopyableCode code="skipCount" /></td>
    <td><code>integer</code></td>
    <td>The skip count, which specifies the number of elements that can be bypassed from a sequence and then return the remaining elements.</td>
</tr>
<tr id="parameter-takeCount">
    <td><CopyableCode code="takeCount" /></td>
    <td><code>integer</code></td>
    <td>The take count , which specifies the number of elements that can be returned from a sequence.</td>
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

Gets the details of a service for a tenant having Azure AD Premium license and is onboarded to Azure Active Directory Connect Health.

```sql
SELECT
id,
activeAlerts,
additionalInformation,
createdDate,
customNotificationEmails,
disabled,
displayName,
health,
lastDisabled,
lastUpdated,
monitoringConfigurationsComputed,
monitoringConfigurationsCustomized,
notificationEmailEnabled,
notificationEmailEnabledForGlobalAdmins,
notificationEmails,
notificationEmailsEnabledForGlobalAdmins,
originalDisabledState,
resolvedAlerts,
serviceId,
serviceName,
signature,
simpleProperties,
tenantId,
type
FROM azure.ad_hybrid_health_service.services
WHERE serviceName = '{{ serviceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the details of services, for a tenant, that are onboarded to Azure Active Directory Connect Health.

```sql
SELECT
id,
activeAlerts,
additionalInformation,
createdDate,
customNotificationEmails,
disabled,
displayName,
health,
lastDisabled,
lastUpdated,
monitoringConfigurationsComputed,
monitoringConfigurationsCustomized,
notificationEmailEnabled,
notificationEmailEnabledForGlobalAdmins,
notificationEmails,
notificationEmailsEnabledForGlobalAdmins,
originalDisabledState,
resolvedAlerts,
serviceId,
serviceName,
signature,
simpleProperties,
tenantId,
type
FROM azure.ad_hybrid_health_service.services
WHERE $filter = '{{ $filter }}'
AND serviceType = '{{ serviceType }}'
AND skipCount = '{{ skipCount }}'
AND takeCount = '{{ takeCount }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates the service properties of an onboarded service.

```sql
UPDATE azure.ad_hybrid_health_service.services
SET 
data__id = '{{ id }}',
data__activeAlerts = {{ activeAlerts }},
data__additionalInformation = '{{ additionalInformation }}',
data__createdDate = '{{ createdDate }}',
data__customNotificationEmails = '{{ customNotificationEmails }}',
data__disabled = {{ disabled }},
data__displayName = '{{ displayName }}',
data__health = '{{ health }}',
data__lastDisabled = '{{ lastDisabled }}',
data__lastUpdated = '{{ lastUpdated }}',
data__monitoringConfigurationsComputed = '{{ monitoringConfigurationsComputed }}',
data__monitoringConfigurationsCustomized = '{{ monitoringConfigurationsCustomized }}',
data__notificationEmailEnabled = {{ notificationEmailEnabled }},
data__notificationEmailEnabledForGlobalAdmins = {{ notificationEmailEnabledForGlobalAdmins }},
data__notificationEmailsEnabledForGlobalAdmins = {{ notificationEmailsEnabledForGlobalAdmins }},
data__notificationEmails = '{{ notificationEmails }}',
data__originalDisabledState = {{ originalDisabledState }},
data__resolvedAlerts = {{ resolvedAlerts }},
data__serviceId = '{{ serviceId }}',
data__serviceName = '{{ serviceName }}',
data__signature = '{{ signature }}',
data__simpleProperties = '{{ simpleProperties }}',
data__tenantId = '{{ tenantId }}',
data__type = '{{ type }}'
WHERE 
serviceName = '{{ serviceName }}' --required
RETURNING
id,
activeAlerts,
additionalInformation,
createdDate,
customNotificationEmails,
disabled,
displayName,
health,
lastDisabled,
lastUpdated,
monitoringConfigurationsComputed,
monitoringConfigurationsCustomized,
notificationEmailEnabled,
notificationEmailEnabledForGlobalAdmins,
notificationEmails,
notificationEmailsEnabledForGlobalAdmins,
originalDisabledState,
resolvedAlerts,
serviceId,
serviceName,
signature,
simpleProperties,
tenantId,
type;
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

Deletes a service which is onboarded to Azure Active Directory Connect Health.

```sql
DELETE FROM azure.ad_hybrid_health_service.services
WHERE serviceName = '{{ serviceName }}' --required
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
        { label: 'add_alert_feedback', value: 'add_alert_feedback' },
        { label: 'update_monitoring_configuration', value: 'update_monitoring_configuration' }
    ]}
>
<TabItem value="add">

Onboards a service for a given tenant in Azure Active Directory Connect Health.

```sql
EXEC azure.ad_hybrid_health_service.services.add 
@@json=
'{
"id": "{{ id }}", 
"activeAlerts": {{ activeAlerts }}, 
"additionalInformation": "{{ additionalInformation }}", 
"createdDate": "{{ createdDate }}", 
"customNotificationEmails": "{{ customNotificationEmails }}", 
"disabled": {{ disabled }}, 
"displayName": "{{ displayName }}", 
"health": "{{ health }}", 
"lastDisabled": "{{ lastDisabled }}", 
"lastUpdated": "{{ lastUpdated }}", 
"monitoringConfigurationsComputed": "{{ monitoringConfigurationsComputed }}", 
"monitoringConfigurationsCustomized": "{{ monitoringConfigurationsCustomized }}", 
"notificationEmailEnabled": {{ notificationEmailEnabled }}, 
"notificationEmailEnabledForGlobalAdmins": {{ notificationEmailEnabledForGlobalAdmins }}, 
"notificationEmailsEnabledForGlobalAdmins": {{ notificationEmailsEnabledForGlobalAdmins }}, 
"notificationEmails": "{{ notificationEmails }}", 
"originalDisabledState": {{ originalDisabledState }}, 
"resolvedAlerts": {{ resolvedAlerts }}, 
"serviceId": "{{ serviceId }}", 
"serviceName": "{{ serviceName }}", 
"signature": "{{ signature }}", 
"simpleProperties": "{{ simpleProperties }}", 
"tenantId": "{{ tenantId }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="add_alert_feedback">

Adds an alert feedback submitted by customer.

```sql
EXEC azure.ad_hybrid_health_service.services.add_alert_feedback 
@serviceName='{{ serviceName }}' --required 
@@json=
'{
"level": "{{ level }}", 
"state": "{{ state }}", 
"shortName": "{{ shortName }}", 
"feedback": "{{ feedback }}", 
"comment": "{{ comment }}", 
"consentedToShare": {{ consentedToShare }}, 
"serviceMemberId": "{{ serviceMemberId }}", 
"createdDate": "{{ createdDate }}"
}'
;
```
</TabItem>
<TabItem value="update_monitoring_configuration">

Updates the service level monitoring configuration.

```sql
EXEC azure.ad_hybrid_health_service.services.update_monitoring_configuration 
@serviceName='{{ serviceName }}' --required 
@@json=
'{
"key": "{{ key }}", 
"value": "{{ value }}"
}'
;
```
</TabItem>
</Tabs>
