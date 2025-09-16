--- 
title: service_members_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - service_members_connectors
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

Creates, updates, deletes, gets or lists a <code>service_members_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_members_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.service_members_connectors" /></td></tr>
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

The list of connector details.

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
    <td>The connector Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The connector name.</td>
</tr>
<tr>
    <td><CopyableCode code="attributesIncluded" /></td>
    <td><code>array</code></td>
    <td>The attribute inclusion list of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="classesIncluded" /></td>
    <td><code>array</code></td>
    <td>The class inclusion list of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="connectorId" /></td>
    <td><code>string</code></td>
    <td>The connector Id.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The connector description.</td>
</tr>
<tr>
    <td><CopyableCode code="partitions" /></td>
    <td><code>array</code></td>
    <td>The partitions of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="passwordHashSyncConfiguration" /></td>
    <td><code>object</code></td>
    <td>The password hash synchronization configuration of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="passwordManagementSettings" /></td>
    <td><code>object</code></td>
    <td>The password management settings of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="runProfiles" /></td>
    <td><code>array</code></td>
    <td>The run profiles of the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="schemaXml" /></td>
    <td><code>string</code></td>
    <td>The schema xml for the connector.</td>
</tr>
<tr>
    <td><CopyableCode code="timeCreated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time when this connector was created.</td>
</tr>
<tr>
    <td><CopyableCode code="timeLastModified" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time when this connector was last modified.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The connector type.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>integer</code></td>
    <td>The connector version</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td></td>
    <td>Gets the connector details for a service.</td>
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

Gets the connector details for a service.

```sql
SELECT
id,
name,
attributesIncluded,
classesIncluded,
connectorId,
description,
partitions,
passwordHashSyncConfiguration,
passwordManagementSettings,
runProfiles,
schemaXml,
timeCreated,
timeLastModified,
type,
version
FROM azure.ad_hybrid_health_service.service_members_connectors
WHERE serviceName = '{{ serviceName }}' -- required
AND serviceMemberId = '{{ serviceMemberId }}' -- required
;
```
</TabItem>
</Tabs>
