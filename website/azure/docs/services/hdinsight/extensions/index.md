--- 
title: extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - extensions
  - hdinsight
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

Creates, updates, deletes, gets or lists an <code>extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.extensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="clusterMonitoringEnabled" /></td>
    <td><code>boolean</code></td>
    <td>The status of the monitor on the HDInsight cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="workspaceId" /></td>
    <td><code>string</code></td>
    <td>The workspace ID of the monitor on the HDInsight cluster.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Gets the extension properties for the specified HDInsight cluster extension.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Creates an HDInsight cluster extension.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Deletes the specified extension for HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#enable_monitoring"><CopyableCode code="enable_monitoring" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Enables the Operations Management Suite (OMS) on the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#disable_monitoring"><CopyableCode code="disable_monitoring" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Disables the Operations Management Suite (OMS) on the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#enable_azure_monitor"><CopyableCode code="enable_azure_monitor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Enables the Azure Monitor on the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#disable_azure_monitor"><CopyableCode code="disable_azure_monitor" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Disables the Azure Monitor on the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#enable_azure_monitor_agent"><CopyableCode code="enable_azure_monitor_agent" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Enables the Azure Monitor Agent on the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#disable_azure_monitor_agent"><CopyableCode code="disable_azure_monitor_agent" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Disables the Azure Monitor Agent on the HDInsight cluster.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-extensionName">
    <td><CopyableCode code="extensionName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster extension.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the extension properties for the specified HDInsight cluster extension.

```sql
SELECT
clusterMonitoringEnabled,
workspaceId
FROM azure.hdinsight.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND extensionName = '{{ extensionName }}' -- required
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

Creates an HDInsight cluster extension.

```sql
INSERT INTO azure.hdinsight.extensions (
data__workspaceId,
data__primaryKey,
subscriptionId,
resourceGroupName,
clusterName,
extensionName
)
SELECT 
'{{ workspaceId }}',
'{{ primaryKey }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ extensionName }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extensions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the extensions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the extensions resource.
    - name: clusterName
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionName
      value: string
      description: Required parameter for the extensions resource.
    - name: workspaceId
      value: string
      description: |
        The workspace ID for the cluster monitoring extension.
    - name: primaryKey
      value: string
      description: |
        The certificate for the cluster monitoring extensions.
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

Deletes the specified extension for HDInsight cluster.

```sql
DELETE FROM azure.hdinsight.extensions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND extensionName = '{{ extensionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="enable_monitoring"
    values={[
        { label: 'enable_monitoring', value: 'enable_monitoring' },
        { label: 'disable_monitoring', value: 'disable_monitoring' },
        { label: 'enable_azure_monitor', value: 'enable_azure_monitor' },
        { label: 'disable_azure_monitor', value: 'disable_azure_monitor' },
        { label: 'enable_azure_monitor_agent', value: 'enable_azure_monitor_agent' },
        { label: 'disable_azure_monitor_agent', value: 'disable_azure_monitor_agent' }
    ]}
>
<TabItem value="enable_monitoring">

Enables the Operations Management Suite (OMS) on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.enable_monitoring 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required 
@@json=
'{
"workspaceId": "{{ workspaceId }}", 
"primaryKey": "{{ primaryKey }}"
}'
;
```
</TabItem>
<TabItem value="disable_monitoring">

Disables the Operations Management Suite (OMS) on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.disable_monitoring 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required
;
```
</TabItem>
<TabItem value="enable_azure_monitor">

Enables the Azure Monitor on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.enable_azure_monitor 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required 
@@json=
'{
"workspaceId": "{{ workspaceId }}", 
"primaryKey": "{{ primaryKey }}", 
"selectedConfigurations": "{{ selectedConfigurations }}"
}'
;
```
</TabItem>
<TabItem value="disable_azure_monitor">

Disables the Azure Monitor on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.disable_azure_monitor 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required
;
```
</TabItem>
<TabItem value="enable_azure_monitor_agent">

Enables the Azure Monitor Agent on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.enable_azure_monitor_agent 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required 
@@json=
'{
"workspaceId": "{{ workspaceId }}", 
"primaryKey": "{{ primaryKey }}", 
"selectedConfigurations": "{{ selectedConfigurations }}"
}'
;
```
</TabItem>
<TabItem value="disable_azure_monitor_agent">

Disables the Azure Monitor Agent on the HDInsight cluster.

```sql
EXEC azure.hdinsight.extensions.disable_azure_monitor_agent 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required
;
```
</TabItem>
</Tabs>
