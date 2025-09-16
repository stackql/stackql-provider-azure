--- 
title: offers
hide_title: false
hide_table_of_contents: false
keywords:
  - offers
  - edge_marketplace
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>offers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>offers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_marketplace.offers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Get a Offer</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-maxpagesize"><code>maxpagesize</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>List Offer resources by parent</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-maxpagesize"><code>maxpagesize</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>List Offer resources by subscription</td>
</tr>
<tr>
    <td><a href="#generate_access_token"><CopyableCode code="generate_access_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-edgeMarketPlaceRegion"><code>edgeMarketPlaceRegion</code></a></td>
    <td></td>
    <td>A long-running resource action.</td>
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
<tr id="parameter-offerId">
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>Id of the offer</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filter the result list using the given expression.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Skip over when retrieving results.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to return.</td>
</tr>
<tr id="parameter-maxpagesize">
    <td><CopyableCode code="maxpagesize" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of result items per page.</td>
</tr>
<tr id="parameter-skip">
    <td><CopyableCode code="skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to skip.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get a Offer

```sql
SELECT
properties
FROM azure_extras.edge_marketplace.offers
WHERE resourceUri = '{{ resourceUri }}' -- required
AND offerId = '{{ offerId }}' -- required
;
```
</TabItem>
<TabItem value="list">

List Offer resources by parent

```sql
SELECT
properties
FROM azure_extras.edge_marketplace.offers
WHERE resourceUri = '{{ resourceUri }}' -- required
AND $top = '{{ $top }}'
AND skip = '{{ skip }}'
AND maxpagesize = '{{ maxpagesize }}'
AND $filter = '{{ $filter }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

List Offer resources by subscription

```sql
SELECT
properties
FROM azure_extras.edge_marketplace.offers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $top = '{{ $top }}'
AND skip = '{{ skip }}'
AND maxpagesize = '{{ maxpagesize }}'
AND $filter = '{{ $filter }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_access_token"
    values={[
        { label: 'generate_access_token', value: 'generate_access_token' }
    ]}
>
<TabItem value="generate_access_token">

A long-running resource action.

```sql
EXEC azure_extras.edge_marketplace.offers.generate_access_token 
@resourceUri='{{ resourceUri }}' --required, 
@offerId='{{ offerId }}' --required 
@@json=
'{
"publisherName": "{{ publisherName }}", 
"edgeMarketPlaceRegion": "{{ edgeMarketPlaceRegion }}", 
"egeMarketPlaceResourceId": "{{ egeMarketPlaceResourceId }}", 
"hypervGeneration": "{{ hypervGeneration }}", 
"marketPlaceSku": "{{ marketPlaceSku }}", 
"marketPlaceSkuVersion": "{{ marketPlaceSkuVersion }}", 
"deviceSku": "{{ deviceSku }}", 
"deviceVersion": "{{ deviceVersion }}"
}'
;
```
</TabItem>
</Tabs>
