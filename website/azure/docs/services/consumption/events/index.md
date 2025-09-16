--- 
title: events
hide_title: false
hide_table_of_contents: false
keywords:
  - events
  - consumption
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

Creates, updates, deletes, gets or lists an <code>events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_billing_profile">

OK. The request has succeeded.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The event properties. (title: Event summary properties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account">

OK. The request has succeeded.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The event properties. (title: Event summary properties)</td>
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
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingProfileId"><code>billingProfileId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a></td>
    <td></td>
    <td>Lists the events that decrements Azure credits or Microsoft Azure consumption commitment for a billing account or a billing profile for a given start and end date.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the events that decrements Azure credits or Microsoft Azure consumption commitment for a billing account or a billing profile for a given start and end date.</td>
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
<tr id="parameter-billingAccountId">
    <td><CopyableCode code="billingAccountId" /></td>
    <td><code>string</code></td>
    <td>BillingAccount ID</td>
</tr>
<tr id="parameter-billingProfileId">
    <td><CopyableCode code="billingProfileId" /></td>
    <td><code>string</code></td>
    <td>Azure Billing Profile ID.</td>
</tr>
<tr id="parameter-endDate">
    <td><CopyableCode code="endDate" /></td>
    <td><code>string</code></td>
    <td>End date</td>
</tr>
<tr id="parameter-startDate">
    <td><CopyableCode code="startDate" /></td>
    <td><code>string</code></td>
    <td>Start date</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter the events by lotId, lotSource etc. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key and value is separated by a colon (:).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_billing_profile">

Lists the events that decrements Azure credits or Microsoft Azure consumption commitment for a billing account or a billing profile for a given start and end date.

```sql
SELECT
properties
FROM azure.consumption.events
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND billingProfileId = '{{ billingProfileId }}' -- required
AND startDate = '{{ startDate }}' -- required
AND endDate = '{{ endDate }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the events that decrements Azure credits or Microsoft Azure consumption commitment for a billing account or a billing profile for a given start and end date.

```sql
SELECT
properties
FROM azure.consumption.events
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
