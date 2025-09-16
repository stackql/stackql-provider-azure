--- 
title: alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - alerts
  - alerts_management
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

Creates, updates, deletes, gets or lists an <code>alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alerts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.alerts" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'get_all', value: 'get_all' }
    ]}
>
<TabItem value="get_by_id">

OK. Returns the alert with the specified ID.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Alert property bag</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_all">

OK. Successfully listed alert objects.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Alert property bag</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
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
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-alertId"><code>alertId</code></a></td>
    <td></td>
    <td>Get information related to a specific alert</td>
</tr>
<tr>
    <td><a href="#get_all"><CopyableCode code="get_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-targetResource"><code>targetResource</code></a>, <a href="#parameter-targetResourceType"><code>targetResourceType</code></a>, <a href="#parameter-targetResourceGroup"><code>targetResourceGroup</code></a>, <a href="#parameter-monitorService"><code>monitorService</code></a>, <a href="#parameter-monitorCondition"><code>monitorCondition</code></a>, <a href="#parameter-severity"><code>severity</code></a>, <a href="#parameter-alertState"><code>alertState</code></a>, <a href="#parameter-alertRule"><code>alertRule</code></a>, <a href="#parameter-smartGroupId"><code>smartGroupId</code></a>, <a href="#parameter-includeContext"><code>includeContext</code></a>, <a href="#parameter-includeEgressConfig"><code>includeEgressConfig</code></a>, <a href="#parameter-pageCount"><code>pageCount</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a>, <a href="#parameter-select"><code>select</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a>, <a href="#parameter-customTimeRange"><code>customTimeRange</code></a></td>
    <td>List all existing alerts, where the results can be filtered on the basis of multiple parameters (e.g. time range). The results can then be sorted on the basis specific fields, with the default being lastModifiedDateTime. </td>
</tr>
<tr>
    <td><a href="#meta_data"><CopyableCode code="meta_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-identifier"><code>identifier</code></a></td>
    <td></td>
    <td>List alerts meta data information based on value of identifier parameter.</td>
</tr>
<tr>
    <td><a href="#change_state"><CopyableCode code="change_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-alertId"><code>alertId</code></a>, <a href="#parameter-newState"><code>newState</code></a></td>
    <td></td>
    <td>Change the state of an alert.</td>
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
<tr id="parameter-alertId">
    <td><CopyableCode code="alertId" /></td>
    <td><code>string</code></td>
    <td>Unique ID of an alert instance.</td>
</tr>
<tr id="parameter-identifier">
    <td><CopyableCode code="identifier" /></td>
    <td><code>string</code></td>
    <td>Identification of the information to be retrieved by API call.</td>
</tr>
<tr id="parameter-newState">
    <td><CopyableCode code="newState" /></td>
    <td><code>string</code></td>
    <td>New state of the alert.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>scope here is resourceId for which alert is created.</td>
</tr>
<tr id="parameter-alertRule">
    <td><CopyableCode code="alertRule" /></td>
    <td><code>string</code></td>
    <td>Filter by specific alert rule.  Default value is to select all.</td>
</tr>
<tr id="parameter-alertState">
    <td><CopyableCode code="alertState" /></td>
    <td><code>string</code></td>
    <td>Filter by state of the alert instance. Default value is to select all.</td>
</tr>
<tr id="parameter-customTimeRange">
    <td><CopyableCode code="customTimeRange" /></td>
    <td><code>string</code></td>
    <td>Filter by custom time range in the format &lt;start-time&gt;/&lt;end-time&gt;  where time is in (ISO-8601 format)'. Permissible values is within 30 days from  query time. Either timeRange or customTimeRange could be used but not both. Default is none.</td>
</tr>
<tr id="parameter-includeContext">
    <td><CopyableCode code="includeContext" /></td>
    <td><code>boolean</code></td>
    <td>Include context which has contextual data specific to the monitor service. Default value is false'</td>
</tr>
<tr id="parameter-includeEgressConfig">
    <td><CopyableCode code="includeEgressConfig" /></td>
    <td><code>boolean</code></td>
    <td>Include egress config which would be used for displaying the content in portal.  Default value is 'false'.</td>
</tr>
<tr id="parameter-monitorCondition">
    <td><CopyableCode code="monitorCondition" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor condition which is either 'Fired' or 'Resolved'. Default value is to select all.</td>
</tr>
<tr id="parameter-monitorService">
    <td><CopyableCode code="monitorService" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor service which generates the alert instance. Default value is select all.</td>
</tr>
<tr id="parameter-pageCount">
    <td><CopyableCode code="pageCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Determines number of alerts returned per page in response. Permissible value is between 1 to 250. When the "includeContent"  filter is selected, maximum value allowed is 25. Default value is 25.</td>
</tr>
<tr id="parameter-select">
    <td><CopyableCode code="select" /></td>
    <td><code>string</code></td>
    <td>This filter allows to selection of the fields(comma separated) which would  be part of the essential section. This would allow to project only the  required fields rather than getting entire content.  Default is to fetch all the fields in the essentials section.</td>
</tr>
<tr id="parameter-severity">
    <td><CopyableCode code="severity" /></td>
    <td><code>string</code></td>
    <td>Filter by severity.  Default value is select all.</td>
</tr>
<tr id="parameter-smartGroupId">
    <td><CopyableCode code="smartGroupId" /></td>
    <td><code>string</code></td>
    <td>Filter the alerts list by the Smart Group Id. Default value is none.</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Sort the query results by input field,  Default value is 'lastModifiedDateTime'.</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>Sort the query results order in either ascending or descending.  Default value is 'desc' for time fields and 'asc' for others.</td>
</tr>
<tr id="parameter-targetResource">
    <td><CopyableCode code="targetResource" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource( which is full ARM ID) Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceGroup">
    <td><CopyableCode code="targetResourceGroup" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource group name. Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceType">
    <td><CopyableCode code="targetResourceType" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource type. Default value is select all.</td>
</tr>
<tr id="parameter-timeRange">
    <td><CopyableCode code="timeRange" /></td>
    <td><code>string</code></td>
    <td>Filter by time range by below listed values. Default value is 1 day.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'get_all', value: 'get_all' }
    ]}
>
<TabItem value="get_by_id">

Get information related to a specific alert

```sql
SELECT
id,
name,
properties,
type
FROM azure.alerts_management.alerts
WHERE scope = '{{ scope }}' -- required
AND alertId = '{{ alertId }}' -- required
;
```
</TabItem>
<TabItem value="get_all">

List all existing alerts, where the results can be filtered on the basis of multiple parameters (e.g. time range). The results can then be sorted on the basis specific fields, with the default being lastModifiedDateTime. 

```sql
SELECT
id,
name,
properties,
type
FROM azure.alerts_management.alerts
WHERE scope = '{{ scope }}' -- required
AND targetResource = '{{ targetResource }}'
AND targetResourceType = '{{ targetResourceType }}'
AND targetResourceGroup = '{{ targetResourceGroup }}'
AND monitorService = '{{ monitorService }}'
AND monitorCondition = '{{ monitorCondition }}'
AND severity = '{{ severity }}'
AND alertState = '{{ alertState }}'
AND alertRule = '{{ alertRule }}'
AND smartGroupId = '{{ smartGroupId }}'
AND includeContext = '{{ includeContext }}'
AND includeEgressConfig = '{{ includeEgressConfig }}'
AND pageCount = '{{ pageCount }}'
AND sortBy = '{{ sortBy }}'
AND sortOrder = '{{ sortOrder }}'
AND select = '{{ select }}'
AND timeRange = '{{ timeRange }}'
AND customTimeRange = '{{ customTimeRange }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="meta_data"
    values={[
        { label: 'meta_data', value: 'meta_data' },
        { label: 'change_state', value: 'change_state' }
    ]}
>
<TabItem value="meta_data">

List alerts meta data information based on value of identifier parameter.

```sql
EXEC azure.alerts_management.alerts.meta_data 
@identifier='{{ identifier }}' --required
;
```
</TabItem>
<TabItem value="change_state">

Change the state of an alert.

```sql
EXEC azure.alerts_management.alerts.change_state 
@scope='{{ scope }}' --required, 
@alertId='{{ alertId }}' --required, 
@newState='{{ newState }}' --required 
@@json=
'{
"comments": "{{ comments }}"
}'
;
```
</TabItem>
</Tabs>
