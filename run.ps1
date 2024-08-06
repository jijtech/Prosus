Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$Form = New-Object System.Windows.Forms.Form
$Form.Text = "WSUS Helper"
$Form.Size = New-Object System.Drawing.Size(300,200)
$Form.StartPosition = "CenterScreen"

$TabControl = New-Object System.Windows.Forms.TabControl
$TabControl.Location = New-Object System.Drawing.Point(10,40)
$TabControl.Size = New-Object System.Drawing.Size(280,160)
$Form.Controls.Add($TabControl)

# Add default tab
$TabPage = New-Object System.Windows.Forms.TabPage
$TabPage.Text = "Tab 1"
$TabControl.TabPages.Add($TabPage)

$ButtonRow = New-Object System.Windows.Forms.Panel
$ButtonRow.Location = New-Object System.Drawing.Point(10,10)
$ButtonRow.Size = New-Object System.Drawing.Size(280,30)
$Form.Controls.Add($ButtonRow)

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Point(100,5)
$Button.Size = New-Object System.Drawing.Size(75,20)
$Button.Text = "Run WSUS Helper"
$Button.Add_Click({
    # Start WSUS Helper code here
})
$ButtonRow.Controls.Add($Button)

$UpdateButton = New-Object System.Windows.Forms.Button
$UpdateButton.Location = New-Object System.Drawing.Point(10,5)
$UpdateButton.Size = New-Object System.Drawing.Size(75,20)
$UpdateButton.Text = "Update"
$ButtonRow.Controls.Add($UpdateButton)

$RollbackButton = New-Object System.Windows.Forms.Button
$RollbackButton.Location = New-Object System.Drawing.Point(190,5)
$RollbackButton.Size = New-Object System.Drawing.Size(75,20)
$RollbackButton.Text = "Rollback"
$ButtonRow.Controls.Add($RollbackButton)

$ViewLogsButton = New-Object System.Windows.Forms.Button
$ViewLogsButton.Location = New-Object System.Drawing.Point(100,5)
$ViewLogsButton.Size = New-Object System.Drawing.Size(75,20)
$ViewLogsButton.Text = "View Logs"
$ButtonRow.Controls.Add($ViewLogsButton)

$ManagePatchesButton = New-Object System.Windows.Forms.Button
$ManagePatchesButton.Location = New-Object System.Drawing.Point(100,5)
$ManagePatchesButton.Size = New-Object System.Drawing.Size(75,20)
$ManagePatchesButton.Text = "Manage Patches"
$ButtonRow.Controls.Add($ManagePatchesButton)

# Add button for adding more tabs
$AddTabButton = New-Object System.Windows.Forms.Button
$AddTabButton.Location = New-Object System.Drawing.Point(10,10)
$AddTabButton.Size = New-Object System.Drawing.Size(75,20)
$AddTabButton.Text = "Add Tab"
$AddTabButton.Add_Click({
    $NewTabPage = New-Object System.Windows.Forms.TabPage
    $NewTabPage.Text = "Tab " + ($TabControl.TabPages.Count + 1)
    $TabControl.TabPages.Add($NewTabPage)
})
$TabControl.Controls.Add($AddTabButton)

$Form.ShowDialog()
