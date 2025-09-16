--- 
title: export_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - export_configurations
  - application_insights
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

Creates, updates, deletes, gets or lists an <code>export_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>export_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.export_configurations" /></td></tr>
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

The Continuous Export configuration for this export id.

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
    <td><CopyableCode code="ApplicationName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="ContainerName" /></td>
    <td><code>string</code></td>
    <td>The name of the destination storage container.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationAccountId" /></td>
    <td><code>string</code></td>
    <td>The name of destination account.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationStorageLocationId" /></td>
    <td><code>string</code></td>
    <td>The destination account location ID.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationStorageSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The destination storage account subscription ID.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationType" /></td>
    <td><code>string</code></td>
    <td>The destination type.</td>
</tr>
<tr>
    <td><CopyableCode code="ExportId" /></td>
    <td><code>string</code></td>
    <td>The unique ID of the export configuration inside an Application Insights component. It is auto generated when the Continuous Export configuration is created.</td>
</tr>
<tr>
    <td><CopyableCode code="ExportStatus" /></td>
    <td><code>string</code></td>
    <td>This indicates current Continuous Export configuration status. The possible values are 'Preparing', 'Success', 'Failure'.</td>
</tr>
<tr>
    <td><CopyableCode code="InstrumentationKey" /></td>
    <td><code>string</code></td>
    <td>The instrumentation key of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="IsUserEnabled" /></td>
    <td><code>string</code></td>
    <td>This will be 'true' if the Continuous Export configuration is enabled, otherwise it will be 'false'.</td>
</tr>
<tr>
    <td><CopyableCode code="LastGapTime" /></td>
    <td><code>string</code></td>
    <td>The last time the Continuous Export configuration started failing.</td>
</tr>
<tr>
    <td><CopyableCode code="LastSuccessTime" /></td>
    <td><code>string</code></td>
    <td>The last time data was successfully delivered to the destination storage container for this Continuous Export configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="LastUserUpdate" /></td>
    <td><code>string</code></td>
    <td>Last time the Continuous Export configuration was updated.</td>
</tr>
<tr>
    <td><CopyableCode code="NotificationQueueEnabled" /></td>
    <td><code>string</code></td>
    <td>Deprecated</td>
</tr>
<tr>
    <td><CopyableCode code="PermanentErrorReason" /></td>
    <td><code>string</code></td>
    <td>This is the reason the Continuous Export configuration started failing. It can be 'AzureStorageNotFound' or 'AzureStorageAccessDenied'.</td>
</tr>
<tr>
    <td><CopyableCode code="RecordTypes" /></td>
    <td><code>string</code></td>
    <td>This comma separated list of document types that will be exported. The possible values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.</td>
</tr>
<tr>
    <td><CopyableCode code="ResourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="StorageName" /></td>
    <td><code>string</code></td>
    <td>The name of the destination storage account.</td>
</tr>
<tr>
    <td><CopyableCode code="SubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription of the Application Insights component.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list containing 0 or more Continuous Export configuration definitions of an Application Insights component.

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
    <td><CopyableCode code="ApplicationName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="ContainerName" /></td>
    <td><code>string</code></td>
    <td>The name of the destination storage container.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationAccountId" /></td>
    <td><code>string</code></td>
    <td>The name of destination account.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationStorageLocationId" /></td>
    <td><code>string</code></td>
    <td>The destination account location ID.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationStorageSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The destination storage account subscription ID.</td>
</tr>
<tr>
    <td><CopyableCode code="DestinationType" /></td>
    <td><code>string</code></td>
    <td>The destination type.</td>
</tr>
<tr>
    <td><CopyableCode code="ExportId" /></td>
    <td><code>string</code></td>
    <td>The unique ID of the export configuration inside an Application Insights component. It is auto generated when the Continuous Export configuration is created.</td>
</tr>
<tr>
    <td><CopyableCode code="ExportStatus" /></td>
    <td><code>string</code></td>
    <td>This indicates current Continuous Export configuration status. The possible values are 'Preparing', 'Success', 'Failure'.</td>
</tr>
<tr>
    <td><CopyableCode code="InstrumentationKey" /></td>
    <td><code>string</code></td>
    <td>The instrumentation key of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="IsUserEnabled" /></td>
    <td><code>string</code></td>
    <td>This will be 'true' if the Continuous Export configuration is enabled, otherwise it will be 'false'.</td>
</tr>
<tr>
    <td><CopyableCode code="LastGapTime" /></td>
    <td><code>string</code></td>
    <td>The last time the Continuous Export configuration started failing.</td>
</tr>
<tr>
    <td><CopyableCode code="LastSuccessTime" /></td>
    <td><code>string</code></td>
    <td>The last time data was successfully delivered to the destination storage container for this Continuous Export configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="LastUserUpdate" /></td>
    <td><code>string</code></td>
    <td>Last time the Continuous Export configuration was updated.</td>
</tr>
<tr>
    <td><CopyableCode code="NotificationQueueEnabled" /></td>
    <td><code>string</code></td>
    <td>Deprecated</td>
</tr>
<tr>
    <td><CopyableCode code="PermanentErrorReason" /></td>
    <td><code>string</code></td>
    <td>This is the reason the Continuous Export configuration started failing. It can be 'AzureStorageNotFound' or 'AzureStorageAccessDenied'.</td>
</tr>
<tr>
    <td><CopyableCode code="RecordTypes" /></td>
    <td><code>string</code></td>
    <td>This comma separated list of document types that will be exported. The possible values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.</td>
</tr>
<tr>
    <td><CopyableCode code="ResourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group of the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="StorageName" /></td>
    <td><code>string</code></td>
    <td>The name of the destination storage account.</td>
</tr>
<tr>
    <td><CopyableCode code="SubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription of the Application Insights component.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-exportId"><code>exportId</code></a></td>
    <td></td>
    <td>Get the Continuous Export configuration for this export id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Gets a list of Continuous Export configuration of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Create a Continuous Export configuration of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-exportId"><code>exportId</code></a></td>
    <td></td>
    <td>Update the Continuous Export configuration for this export id.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-exportId"><code>exportId</code></a></td>
    <td></td>
    <td>Delete a Continuous Export configuration of an Application Insights component.</td>
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
<tr id="parameter-exportId">
    <td><CopyableCode code="exportId" /></td>
    <td><code>string</code></td>
    <td>The Continuous Export configuration ID. This is unique within a Application Insights component.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Get the Continuous Export configuration for this export id.

```sql
SELECT
ApplicationName,
ContainerName,
DestinationAccountId,
DestinationStorageLocationId,
DestinationStorageSubscriptionId,
DestinationType,
ExportId,
ExportStatus,
InstrumentationKey,
IsUserEnabled,
LastGapTime,
LastSuccessTime,
LastUserUpdate,
NotificationQueueEnabled,
PermanentErrorReason,
RecordTypes,
ResourceGroup,
StorageName,
SubscriptionId
FROM azure.application_insights.export_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND exportId = '{{ exportId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of Continuous Export configuration of an Application Insights component.

```sql
SELECT
ApplicationName,
ContainerName,
DestinationAccountId,
DestinationStorageLocationId,
DestinationStorageSubscriptionId,
DestinationType,
ExportId,
ExportStatus,
InstrumentationKey,
IsUserEnabled,
LastGapTime,
LastSuccessTime,
LastUserUpdate,
NotificationQueueEnabled,
PermanentErrorReason,
RecordTypes,
ResourceGroup,
StorageName,
SubscriptionId
FROM azure.application_insights.export_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create a Continuous Export configuration of an Application Insights component.

```sql
INSERT INTO azure.application_insights.export_configurations (
data__RecordTypes,
data__DestinationType,
data__DestinationAddress,
data__IsEnabled,
data__NotificationQueueEnabled,
data__NotificationQueueUri,
data__DestinationStorageSubscriptionId,
data__DestinationStorageLocationId,
data__DestinationAccountId,
resourceGroupName,
subscriptionId,
resourceName
)
SELECT 
'{{ RecordTypes }}',
'{{ DestinationType }}',
'{{ DestinationAddress }}',
'{{ IsEnabled }}',
'{{ NotificationQueueEnabled }}',
'{{ NotificationQueueUri }}',
'{{ DestinationStorageSubscriptionId }}',
'{{ DestinationStorageLocationId }}',
'{{ DestinationAccountId }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ resourceName }}'
RETURNING
ApplicationName,
ContainerName,
DestinationAccountId,
DestinationStorageLocationId,
DestinationStorageSubscriptionId,
DestinationType,
ExportId,
ExportStatus,
InstrumentationKey,
IsUserEnabled,
LastGapTime,
LastSuccessTime,
LastUserUpdate,
NotificationQueueEnabled,
PermanentErrorReason,
RecordTypes,
ResourceGroup,
StorageName,
SubscriptionId
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: export_configurations
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the export_configurations resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the export_configurations resource.
    - name: resourceName
      value: string
      description: Required parameter for the export_configurations resource.
    - name: RecordTypes
      value: string
      description: |
        The document types to be exported, as comma separated values. Allowed values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
    - name: DestinationType
      value: string
      description: |
        The Continuous Export destination type. This has to be 'Blob'.
    - name: DestinationAddress
      value: string
      description: |
        The SAS URL for the destination storage container. It must grant write permission.
    - name: IsEnabled
      value: string
      description: |
        Set to 'true' to create a Continuous Export configuration as enabled, otherwise set it to 'false'.
    - name: NotificationQueueEnabled
      value: string
      description: |
        Deprecated
    - name: NotificationQueueUri
      value: string
      description: |
        Deprecated
    - name: DestinationStorageSubscriptionId
      value: string
      description: |
        The subscription ID of the destination storage container.
    - name: DestinationStorageLocationId
      value: string
      description: |
        The location ID of the destination storage container.
    - name: DestinationAccountId
      value: string
      description: |
        The name of destination storage account.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update the Continuous Export configuration for this export id.

```sql
REPLACE azure.application_insights.export_configurations
SET 
data__RecordTypes = '{{ RecordTypes }}',
data__DestinationType = '{{ DestinationType }}',
data__DestinationAddress = '{{ DestinationAddress }}',
data__IsEnabled = '{{ IsEnabled }}',
data__NotificationQueueEnabled = '{{ NotificationQueueEnabled }}',
data__NotificationQueueUri = '{{ NotificationQueueUri }}',
data__DestinationStorageSubscriptionId = '{{ DestinationStorageSubscriptionId }}',
data__DestinationStorageLocationId = '{{ DestinationStorageLocationId }}',
data__DestinationAccountId = '{{ DestinationAccountId }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND exportId = '{{ exportId }}' --required
RETURNING
ApplicationName,
ContainerName,
DestinationAccountId,
DestinationStorageLocationId,
DestinationStorageSubscriptionId,
DestinationType,
ExportId,
ExportStatus,
InstrumentationKey,
IsUserEnabled,
LastGapTime,
LastSuccessTime,
LastUserUpdate,
NotificationQueueEnabled,
PermanentErrorReason,
RecordTypes,
ResourceGroup,
StorageName,
SubscriptionId;
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

Delete a Continuous Export configuration of an Application Insights component.

```sql
DELETE FROM azure.application_insights.export_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND exportId = '{{ exportId }}' --required
;
```
</TabItem>
</Tabs>
