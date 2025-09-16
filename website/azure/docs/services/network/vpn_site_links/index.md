--- 
title: vpn_site_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vpn_site_links
  - network
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

Creates, updates, deletes, gets or lists a <code>vpn_site_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vpn_site_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vpn_site_links" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vpn_site', value: 'list_by_vpn_site' }
    ]}
>
<TabItem value="get">

Request successful. Returns the details of the VpnSiteLink retrieved.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the VPN site link.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_vpn_site">

Request successful. Returns the details of all the vpnSites in the resource group.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the VPN site link.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnSiteName"><code>vpnSiteName</code></a>, <a href="#parameter-vpnSiteLinkName"><code>vpnSiteLinkName</code></a></td>
    <td></td>
    <td>Retrieves the details of a VPN site link.</td>
</tr>
<tr>
    <td><a href="#list_by_vpn_site"><CopyableCode code="list_by_vpn_site" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnSiteName"><code>vpnSiteName</code></a></td>
    <td></td>
    <td>Lists all the vpnSiteLinks in a resource group for a vpn site.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name of the VpnSite.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-vpnSiteLinkName">
    <td><CopyableCode code="vpnSiteLinkName" /></td>
    <td><code>string</code></td>
    <td>The name of the VpnSiteLink being retrieved.</td>
</tr>
<tr id="parameter-vpnSiteName">
    <td><CopyableCode code="vpnSiteName" /></td>
    <td><code>string</code></td>
    <td>The name of the VpnSite.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vpn_site', value: 'list_by_vpn_site' }
    ]}
>
<TabItem value="get">

Retrieves the details of a VPN site link.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.vpn_site_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vpnSiteName = '{{ vpnSiteName }}' -- required
AND vpnSiteLinkName = '{{ vpnSiteLinkName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_vpn_site">

Lists all the vpnSiteLinks in a resource group for a vpn site.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.vpn_site_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vpnSiteName = '{{ vpnSiteName }}' -- required
;
```
</TabItem>
</Tabs>
