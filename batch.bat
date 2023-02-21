xcopy "$(SolutionDir)$(TargetName)\bin\Release\*" "E:\01_CA_NHAN\02. HOC TAP\testcopy\$(TargetName)" /s /i /y
/I - treat as a directory if copying multiple files.
/Q - Do not display the files being copied.
/S - Copy subdirectories unless empty.
/E - Copy empty subdirectories.
/Y - Do not prompt for overwrite of existing files.
/R - Overwrite read-only files.
/D Copy only files that are modified in sourcepath


msbuild WebApplication.csproj /p:DeployOnBuild=true /p:WebPublishMethod=Package /p:PublishProfile=Default
:: =========== Functions ===============
REM Function Apps.
msbuild FunctionApp\FunctionApp.csproj /p:PackageLocation="..\PublishOutput\ZipFunctionApp" /p:DeployOnBuild=true /p:Configuration=Release /p:WebPublishMethod=Package /p:DeployTarget=WebPublish /p:AutoParameterizationWebConfigConnectionStrings=false /p:PackageAsSingleFile=true /p:DeployIisAppPath="Default Web Site" /p:SolutionDir="." /p:DesktopBuildPackageLocation="%RootPath%PublishOutput\ZipFunctionApp\FunctionApp.zip"
if errorlevel 1 GOTO ERROR


:ERROR
endlocal
exit /b 1


<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="DataSet1" targetNamespace="http://tempuri.org/DataSet1.xsd" xmlns:mstns="http://tempuri.org/DataSet1.xsd" xmlns="http://tempuri.org/DataSet1.xsd" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata" xmlns:msprop="urn:schemas-microsoft-com:xml-msprop" attributeFormDefault="qualified" elementFormDefault="qualified">
  <xs:annotation>
    <xs:appinfo source="urn:schemas-microsoft-com:xml-msdatasource">
      <DataSource DefaultConnectionIndex="0" FunctionsComponentName="QueriesTableAdapter" Modifier="AutoLayout, AnsiClass, Class, Public" SchemaSerializationMode="IncludeSchema" xmlns="urn:schemas-microsoft-com:xml-msdatasource">
        <Connections />
        <Tables />
        <Sources />
      </DataSource>
    </xs:appinfo>
  </xs:annotation>
  <xs:element name="DataSet1" msdata:IsDataSet="true" msdata:UseCurrentLocale="true" msprop:EnableTableAdapterManager="true" msprop:Generator_DataSetName="DataSet1" msprop:Generator_UserDSName="DataSet1">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="DataTable1" msprop:Generator_TableClassName="DataTable1DataTable" msprop:Generator_TableVarName="tableDataTable1" msprop:Generator_TablePropName="DataTable1" msprop:Generator_RowDeletingName="DataTable1RowDeleting" msprop:Generator_RowChangingName="DataTable1RowChanging" msprop:Generator_RowEvHandlerName="DataTable1RowChangeEventHandler" msprop:Generator_RowDeletedName="DataTable1RowDeleted" msprop:Generator_UserTableName="DataTable1" msprop:Generator_RowChangedName="DataTable1RowChanged" msprop:Generator_RowEvArgName="DataTable1RowChangeEvent" msprop:Generator_RowClassName="DataTable1Row">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="zzzz" msprop:Generator_ColumnVarNameInTable="columnzzzz" msprop:Generator_ColumnPropNameInRow="zzzz" msprop:Generator_ColumnPropNameInTable="zzzzColumn" msprop:Generator_UserColumnName="zzzz" default="&quot;&quot;" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
  </xs:element>
</xs:schema>


https://dobon.net/vb/bbs/log3-49/29138.html


DataTable tbl = ds.Tables[テーブル名];
　ds.EnforceConstraints = false;　// 制約チェックを無効にする
　adapter.Fill( tbl );　// データを取得
　try {
　　ds.EnforceConstraints = true;　// 制約チェックを再開して例外を捉える
　} catch (System.Data.ConstraintException e) {
　　System.Diagnostics.Trace.WriteLine(e.ToString());
　　// 制約エラーになった行を列挙
　　foreach (var row in tbl.GetErrors()) {
　　　System.Diagnostics.Trace.WriteLine(row.RowError);
　　// 制約エラーになった列を列挙
　　　foreach (var col in row.GetColumnsInError()) {
　　　　System.Diagnostics.Trace.WriteLine(row.GetColumnError(col));
　　　}
　　}
　}
