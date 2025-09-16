--- 
title: services_alert_feedbacks
hide_title: false
hide_table_of_contents: false
keywords:
  - services_alert_feedbacks
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

Creates, updates, deletes, gets or lists a <code>services_alert_feedbacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_alert_feedbacks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services_alert_feedbacks" /></td></tr>
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

The list of alert feedback.

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
    <td><CopyableCode code="comment" /></td>
    <td><code>string</code></td>
    <td>Additional comments related to the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="consentedToShare" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the alert feedback can be shared from product team.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time,in UTC,when the alert was created.</td>
</tr>
<tr>
    <td><CopyableCode code="feedback" /></td>
    <td><code>string</code></td>
    <td>The feedback for the alert which indicates if the customer likes or dislikes the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="level" /></td>
    <td><code>string</code></td>
    <td>The alert level which indicates the severity of the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string</code></td>
    <td>The server Id of the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="shortName" /></td>
    <td><code>string</code></td>
    <td>The alert short name.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The alert state which can be either active or resolved with multiple resolution types.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-shortName"><code>shortName</code></a></td>
    <td></td>
    <td>Gets a list of all alert feedback for a given tenant and alert type.</td>
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
<tr id="parameter-shortName">
    <td><CopyableCode code="shortName" /></td>
    <td><code>string</code></td>
    <td>The name of the alert.</td>
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

Gets a list of all alert feedback for a given tenant and alert type.

```sql
SELECT
comment,
consentedToShare,
createdDate,
feedback,
level,
serviceMemberId,
shortName,
state
FROM azure.ad_hybrid_health_service.services_alert_feedbacks
WHERE serviceName = '{{ serviceName }}' -- required
AND shortName = '{{ shortName }}' -- required
;
```
</TabItem>
</Tabs>
