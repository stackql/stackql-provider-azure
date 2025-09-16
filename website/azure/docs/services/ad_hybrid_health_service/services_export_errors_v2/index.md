--- 
title: services_export_errors_v2
hide_title: false
hide_table_of_contents: false
keywords:
  - services_export_errors_v2
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

Creates, updates, deletes, gets or lists a <code>services_export_errors_v2</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_export_errors_v2</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services_export_errors_v2" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

The list of merged export errors.

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
    <td>The error Id.</td>
</tr>
<tr>
    <td><CopyableCode code="attributeName" /></td>
    <td><code>string</code></td>
    <td>The attribute name.</td>
</tr>
<tr>
    <td><CopyableCode code="attributeValue" /></td>
    <td><code>string</code></td>
    <td>The attribute value.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the error was created.</td>
</tr>
<tr>
    <td><CopyableCode code="csObjectId" /></td>
    <td><code>string</code></td>
    <td> the cs object Id.</td>
</tr>
<tr>
    <td><CopyableCode code="dn" /></td>
    <td><code>string</code></td>
    <td>the DN of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="existingObject" /></td>
    <td><code>object</code></td>
    <td>The existing object</td>
</tr>
<tr>
    <td><CopyableCode code="exportErrorStatus" /></td>
    <td><code>integer</code></td>
    <td>The export error status.</td>
</tr>
<tr>
    <td><CopyableCode code="incomingObject" /></td>
    <td><code>object</code></td>
    <td>The incoming object details.</td>
</tr>
<tr>
    <td><CopyableCode code="incomingObjectDisplayName" /></td>
    <td><code>string</code></td>
    <td>The incoming object display name.</td>
</tr>
<tr>
    <td><CopyableCode code="incomingObjectType" /></td>
    <td><code>string</code></td>
    <td>The incoming object type.</td>
</tr>
<tr>
    <td><CopyableCode code="mergedEntityId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The merged entity Id.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedOrRemovedAttributeValue" /></td>
    <td><code>string</code></td>
    <td>The modified or removed attribute value.</td>
</tr>
<tr>
    <td><CopyableCode code="runStepResultId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The run step result Id.</td>
</tr>
<tr>
    <td><CopyableCode code="samAccountName" /></td>
    <td><code>string</code></td>
    <td>The sam account name.</td>
</tr>
<tr>
    <td><CopyableCode code="serverErrorDetail" /></td>
    <td><code>string</code></td>
    <td>The server error details.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The service Id.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The server Id.</td>
</tr>
<tr>
    <td><CopyableCode code="timeFirstOccurred" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time when the error first occurred.</td>
</tr>
<tr>
    <td><CopyableCode code="timeOccurred" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time when the error occurred.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the error.</td>
</tr>
<tr>
    <td><CopyableCode code="userPrincipalName" /></td>
    <td><code>string</code></td>
    <td>The user principal name</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-errorBucket"><code>errorBucket</code></a></td>
    <td></td>
    <td> Gets the categorized export errors.</td>
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
<tr id="parameter-errorBucket">
    <td><CopyableCode code="errorBucket" /></td>
    <td><code>string</code></td>
    <td>The error category to query for.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

 Gets the categorized export errors.

```sql
SELECT
id,
attributeName,
attributeValue,
createdDate,
csObjectId,
dn,
existingObject,
exportErrorStatus,
incomingObject,
incomingObjectDisplayName,
incomingObjectType,
mergedEntityId,
modifiedOrRemovedAttributeValue,
runStepResultId,
samAccountName,
serverErrorDetail,
serviceId,
serviceMemberId,
timeFirstOccurred,
timeOccurred,
type,
userPrincipalName
FROM azure.ad_hybrid_health_service.services_export_errors_v2
WHERE serviceName = '{{ serviceName }}' -- required
AND errorBucket = '{{ errorBucket }}' -- required
;
```
</TabItem>
</Tabs>
