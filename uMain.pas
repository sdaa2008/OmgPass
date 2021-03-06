unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  StdCtrls, Forms, ImgList, Menus, ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, ShellApi, Vcl.Buttons, Vcl.ToolWin,
  {XML}
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc,
  {My modules}
  Logic, uCustomEdit, uDocument, uCustomSplitter, System.ImageList;

type
TfrmMain = class(TForm)
    menuMain: TMainMenu;
    mnuDocument: TMenuItem;
    mnuAccounts: TMenuItem;
    mnuPassword: TMenuItem;
    mnuItem: TMenuItem;
    mnuInsertItem: TMenuItem;
    mnuDelete: TMenuItem;
    mnuInsertFolder: TMenuItem;
    mnuEditItem: TMenuItem;
    mnuService: TMenuItem;
    N11: TMenuItem;
    mnuAbout: TMenuItem;
    mnuOptions: TMenuItem;
    mnuGenerator: TMenuItem;
    N14: TMenuItem;
    mnuExport: TMenuItem;
    mnuPrint: TMenuItem;
    N17: TMenuItem;
    mnuUpdates: TMenuItem;
    mnuShowPass: TMenuItem;
    mnuClearClip: TMenuItem;
    N21: TMenuItem;
    mnuTop: TMenuItem;
    ToolBarMain: TToolBar;
    imlToolBar: TImageList;
    tbtnAccounts: TToolButton;
    ToolButton2: TToolButton;
    tbtnInsertItem: TToolButton;
    tbtnInsertFolder: TToolButton;
    tbtnEdit: TToolButton;
    tbtnDelete: TToolButton;
    tbtnOptions: TToolButton;
    tbtnHelp: TToolButton;
    ToolButton9: TToolButton;
    tabMain: TTabControl;
    N29: TMenuItem;
    mnuThemes: TMenuItem;
    fpMain: TScrollBox;
    mnuBaseProperties: TMenuItem;
    sbMain: TStatusBar;
    imlField: TImageList;
    imlTree: TImageList;
    imlTab: TImageList;
    menuTreePopup: TPopupMenu;
    mnuPopupInsertItem: TMenuItem;
    mnuPopupInsertFolder: TMenuItem;
    mnuPopupEditItem: TMenuItem;
    mnuPopupDelete: TMenuItem;
    imlPopup: TImageList;
    N23: TMenuItem;
    tmrTreeExpand: TTimer;
    btnAddPage: TSpeedButton;
    btnDeletePage: TSpeedButton;
    tmrRenameTab: TTimer;
    tbtnLog: TToolButton;
    mnuPopupCloneItem: TMenuItem;
    mnuCloneItem: TMenuItem;
    btnTheme: TSpeedButton;
    Splitter: TSplitter;
    pnlTree: TPanel;
    tvMain: TTreeView;
    txtSearch: TButtonedEdit;
    imlSearch: TImageList;
    tmrSearch: TTimer;
    mnuInsertPage: TMenuItem;
    lblEmpty: TLabel;
    mnuEditDefault: TMenuItem;
    Advancedmode1: TMenuItem;
    N2: TMenuItem;
    mnuSaveAsCrypted: TMenuItem;
    mnuMagic: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ShowLog1: TMenuItem;
    procedure mnuAccountsClick(Sender: TObject);
    procedure tbtnAccountsClick(Sender: TObject);
    procedure mnuGeneratorClick(Sender: TObject);
    procedure mnuOptionsClick(Sender: TObject);
    procedure tbtnOptionsClick(Sender: TObject);
    procedure fpMainMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure mnuBasePropertiesClick(Sender: TObject);
    procedure tabMainChange(Sender: TObject);
    procedure tvMainChange(Sender: TObject; Node: TTreeNode);
    procedure tvMainDblClick(Sender: TObject);
    procedure mnuEditItemClick(Sender: TObject);
    procedure mnuPopupEditItemClick(Sender: TObject);
    procedure menuTreePopupPopup(Sender: TObject);
    procedure tbtnEditClick(Sender: TObject);
    procedure mnuPopupInsertFolderClick(Sender: TObject);
    procedure tbtnInsertFolderClick(Sender: TObject);
    procedure mnuInsertFolderClick(Sender: TObject);
    procedure tbtnHelpClick(Sender: TObject);
    procedure tvMainEdited(Sender: TObject; Node: TTreeNode; var Title: string);
    procedure tvMainEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure mnuPopupDeleteClick(Sender: TObject);
    procedure btnAddPageClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnDeletePageClick(Sender: TObject);
    procedure tbtnInsertItemClick(Sender: TObject);
    procedure tabMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmrRenameTabTimer(Sender: TObject);
    procedure tabMainMouseLeave(Sender: TObject);
    procedure mnuPopupInsertItemClick(Sender: TObject);
    procedure mnuInsertItemClick(Sender: TObject);
    procedure tvMainCollapsed(Sender: TObject; Node: TTreeNode);
    procedure tvMainExpanded(Sender: TObject; Node: TTreeNode);
    procedure tvMainCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure tbtnLogClick(Sender: TObject);
    procedure OnMove(var Msg: TWMMove); message WM_MOVE;
    procedure tvMainStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tvMainDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvMainDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tmrTreeExpandTimer(Sender: TObject);
    procedure mnuPopupCloneItemClick(Sender: TObject);
    procedure mnuCloneItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ThemeMenuClick(Sender: TObject);
    procedure btnThemeClick(Sender: TObject);
    procedure txtSearchEnter(Sender: TObject);
    procedure txtSearchRightButtonClick(Sender: TObject);
    procedure txtSearchChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure txtSearchExit(Sender: TObject);
    procedure txtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure mnuShowPassClick(Sender: TObject);
    procedure mnuClearClipClick(Sender: TObject);
    procedure mnuTopClick(Sender: TObject);
    procedure mnuInsertPageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuServiceClick(Sender: TObject);
    procedure mnuEditDefaultClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuSaveAsCryptedClick(Sender: TObject);
    procedure mnuPasswordClick(Sender: TObject);
    procedure mnuDocumentClick(Sender: TObject);
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure mnuUpdatesClick(Sender: TObject);
    procedure mnuMagicClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure mnuWidthIncrease(Sender: TObject; ACanvas: TCanvas; var Width,
      Height: Integer);
    procedure ShowLog1Click(Sender: TObject);
    procedure SplitterDblClick(Sender: TObject);
private
	{ Private declarations }
public
	{ Public declarations }
end;

var
    frmMain: TfrmMain;

{$R *.dfm}
implementation



uses uAccounts, uGenerator, uProperties, uEditItem, uLog, uStrings,
  uConsole, uPassword, RyMenus, uOptions;
{//////////////////////////////////////////////////////////////////////////////}

{$REGION '#����� �����������'}
//�������� ����� �����������.
//��� ����������� �������� � Logic
procedure TfrmMain.tbtnLogClick(Sender: TObject);
begin
	if Assigned(frmLog) and frmLog.Visible then begin
          	FreeAndNil(frmLog);
        	tbtnLog.Down:=False;
        end
    else begin
        frmLog:=  TfrmLog.Create(nil);
                frmLog.SetBounds(
        				frmMain.Left + frmMain.Width,
        				frmMain.Top,
						frmLog.Width,
        				frmMain.Height);
//        frmLog.Left:=frmMain.Left + frmMain.Width +3;
//        frmLog.Top:=frmMain.Top;
//        frmLog.Height:=frmMain.Height;

        frmLog.lbLog.Items:=LogList;
        frmLog.lbLog.ItemIndex:=frmLog.lbLog.Items.Count-1;
        frmLog.Show;
        bLogDocked:=True;
        tbtnLog.Down:=True;
        frmLog.tmrLog.OnTimer(nil);
    end;
end;
{$ENDREGION}

{$REGION '#���������� ����� ���� � ���� �������� � ��������� �������'}
procedure TfrmMain.OnMove(var Msg: TWMMove);
begin
    if Assigned(frmLog) {and bLogDocked} then
      frmLog.tmrLog.OnTimer(nil);
end;
procedure TfrmMain.ShowLog1Click(Sender: TObject);
begin
tbtnLogClick(nil);
end;
procedure TfrmMain.SplitterDblClick(Sender: TObject);
begin
    //�� �������� ������ ������ ���������
    //�� ������ ��������� � ��������� 2:5
    //� ���� ��� ��� � ���, �� ���������� ������
    if (pnlTree.Width <> tabMain.ClientWidth div 5 * 2) then
        pnlTree.Width:= tabMain.ClientWidth div 5 * 2
    else
        pnlTree.Width:= tabMain.ClientWidth - 17;
end;
procedure TfrmMain.FormResize(Sender: TObject);
begin
    if Boolean(xmlCfg.GetValue('AutoResizeTree', True)) then
        pnlTree.Width:= tabMain.ClientWidth div 5 * 2
    else if Splitter.Left > tabMain.ClientWidth - 14 then
         pnlTree.Width:= tabMain.ClientWidth - 17;
    pnlTree.Align:=alLeft;
    Splitter.Left:=pnlTree.Width;              //WTF?
    lblEmpty.SetBounds((Width - lblEmpty.Width) div 2,
                        (Height - lblEmpty.Height) div 2,
                         lblEmpty.Width,
                         lblEmpty.Height);
    if Assigned(frmLog) and bLogDocked then
    	frmLog.tmrLog.OnTimer(nil);
Log(Self.Width);
end;
procedure TfrmMain.WMSysCommand;
begin
    if (Msg.CmdType = SC_MAXIMIZE) then
        SaveSettings;
    DefaultHandler(Msg) ;
end;
{$ENDREGION}

{$REGION '#�������� ��������� ������'}
procedure TfrmMain.tbtnAccountsClick(Sender: TObject);
begin
mnuAccounts.Click;
end;
procedure TfrmMain.mnuAccountsClick(Sender: TObject);
begin
    DocManager(True);
end;

procedure TfrmMain.mnuBasePropertiesClick(Sender: TObject);
begin
if (not Assigned(frmProperties)) then frmProperties:= TfrmProperties.Create(Self);
if frmProperties.ShowModal = mrOK then log('�������� �������� ��');
FreeAndNil(frmProperties);
end;
procedure TfrmMain.mnuGeneratorClick(Sender: TObject);
begin
if (not Assigned(frmGenerator)) then frmGenerator:=  TfrmGenerator.Create(Self);
frmGenerator.formType:= 1;
frmGenerator.ShowModal;
FreeAndNil(frmGenerator);
end;
procedure TfrmMain.tbtnOptionsClick(Sender: TObject);
begin
mnuOptionsClick(nil);
end;
procedure TfrmMain.mnuOptionsClick(Sender: TObject);
begin
ShowOptionsWindow;
end;
procedure TfrmMain.mnuPasswordClick(Sender: TObject);
begin
    if (not Assigned(frmPassword)) then frmPassword:= TfrmPassword.Create(Self, omgDoc);
    if frmPassword.ShowModal = mrOK then Log('Password changed');
    FreeAndNil(frmPassword);
end;
{$ENDREGION}

{$REGION '#������ �������������� ������ � �.�. ����� ������� � TreeView'}
procedure TfrmMain.tvMainDblClick(Sender: TObject);
//����� ������
begin
//���� ������ =(
    //�������� �� ����� ��� ����� �� �������� ��������������
	if tvMain.Selected.HasChildren or tvMain.Selected.IsFirstNode then Exit;
    //������� ��������� ����� ���� ������, ���������
    if (fpMain.Width = 0) and (tvMain.Selected.ImageIndex = 1) then
        SplitterDblClick(nil)
    else
   	    EditNode(tvMain.Selected)
end;
procedure TfrmMain.mnuEditDefaultClick(Sender: TObject);
begin
    EditDefaultItem;
end;

procedure TfrmMain.mnuEditItemClick(Sender: TObject);
begin
	EditNode(tvMain.Selected);
end;
procedure TfrmMain.mnuPopupEditItemClick(Sender: TObject);
//� ��� �� ��� �� ������
var selNode: TTreeNode;
begin
	selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
    						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
    if selNode = nil then selNode:=tvMain.Selected;
    selNode.Selected:=True;
	EditNode(selNode);
end;
procedure TfrmMain.tbtnEditClick(Sender: TObject);
begin
	EditNode(tvMain.Selected);
end;
procedure TfrmMain.tvMainEdited(Sender: TObject; Node: TTreeNode;
  var Title: string);
begin
	Log('TreeView_onEdited');
	if Title ='' then begin
        Beep;
		Log('tvMainEdited: Empty names r not allowed!');
        Title:=Node.Text;
        Exit;
    end;
	EditNodeTitle(IXMLNode(Node.Data), Title);
end;
procedure TfrmMain.tvMainEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
	Log('TreeView_onEditing');
end;
{$ENDREGION}

{$REGION '#���������� ����� ��������, ����� ��� ������'}
procedure TfrmMain.mnuPopupInsertFolderClick(Sender: TObject);
var selNode: TTreeNode;
begin
	selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
    						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
    if selNode = nil then selNode:=tvMain.Selected;
    selNode.Selected:=True;
	InsertFolder(selNode);
end;
procedure TfrmMain.tbtnInsertFolderClick(Sender: TObject);
begin
	InsertFolder(tvMain.Selected);
end;
procedure TfrmMain.mnuInsertFolderClick(Sender: TObject);
begin
	InsertFolder(tvMain.Selected);
end;
procedure TfrmMain.mnuPopupInsertItemClick(Sender: TObject);
var selNode: TTreeNode;
begin
	selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
    						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
    if selNode = nil then selNode:=tvMain.Selected;
    selNode.Selected:=True;
	InsertItem(selNode);
end;

procedure TfrmMain.mnuInsertItemClick(Sender: TObject);
begin
	InsertItem(tvMain.Selected);
end;

procedure TfrmMain.mnuInsertPageClick(Sender: TObject);
begin
    AddNewPage();
    ParsePagesToTabs(omgDoc.XML, frmMain.tabMain);
    frmMain.tabMainChange(nil);
end;

procedure TfrmMain.mnuMagicClick(Sender: TObject);
begin
    DocumentOpenByPass;
end;

procedure TfrmMain.tbtnInsertItemClick(Sender: TObject);
begin
	InsertItem(tvMain.Selected);
end;
procedure TfrmMain.btnAddPageClick(Sender: TObject);
begin
    AddNewPage();
    ParsePagesToTabs(omgDoc.XML, frmMain.tabMain);
    frmMain.tabMainChange(nil);
end;
{$ENDREGION}

{$REGION '#������������ ����'}
    procedure TfrmMain.menuTreePopupPopup(Sender: TObject);
    //���������� ���� ������������ ������� �� ������. �����.
    var selNode: TTreeNode;
    begin
        selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
        						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
        if selNode = nil then selNode:=tvMain.Selected;
   	log('menuTreePopup: �������� ����: ' + selNode.Text + ', Sender:' + Sender.UnitName);
        //�� ���� ����� ����� ����������, �� ��������� ����� ��� ��� �������.
    	   	{case GetNodeType(IXMLNode(selNode.Data)) of
            	ntItem: begin
        			mnuPopupInsertItem.Enabled:=False;
                    mnuPopupInsertFolder.Enabled:=False;
                    mnuPopupEditItem.Enabled:=True;
                    mnuPopupDelete.Enabled:=True;
                    end;
                ntFolder: begin
                	mnuPopupInsertItem.Enabled:=True;
                    mnuPopupInsertFolder.Enabled:=True;
                    mnuPopupEditItem.Enabled:=False;
                    mnuPopupDelete.Enabled:=True;
                    end;
                ntPage: begin
                	mnuPopupInsertItem.Enabled:=True;
                    mnuPopupInsertFolder.Enabled:=True;
                    mnuPopupEditItem.Enabled:=True;
                    mnuPopupDelete.Enabled:=True;
           	end;
        end; }
    end;

{$ENDREGION}

{$REGION '#��������'}
procedure TfrmMain.btnDeletePageClick(Sender: TObject);
begin
    DeleteNode(tvMain.Selected, True);
end;
procedure TfrmMain.btnThemeClick(Sender: TObject);
begin
    if intThemeIndex <> mnuThemes.Count - 1 then
        mnuThemes.Items[intThemeIndex + 1].Click
    else
        mnuThemes.Items[0].Click;
end;

procedure TfrmMain.tbtnDeleteClick(Sender: TObject);
begin
	DeleteNode(tvMain.Selected);
end;
procedure TfrmMain.mnuDeleteClick(Sender: TObject);
begin
	DeleteNode(tvMain.Selected)
end;
procedure TfrmMain.mnuPopupDeleteClick(Sender: TObject);
var selNode: TTreeNode;
begin
	selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
    						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
    if selNode = nil then selNode:=tvMain.Selected;
    selNode.Selected:=True;
	DeleteNode(selNode);
end;
{$ENDREGION}

{$REGION '#������������ ������'}
procedure TfrmMain.mnuPopupCloneItemClick(Sender: TObject);
    var selNode: TTreeNode;
begin
  	selNode:= tvMain.GetNodeAt(tvMain.ScreenToClient(menuTreePopup.PopupPoint).X,
      						tvMain.ScreenToClient(menuTreePopup.PopupPoint).Y);
    if selNode = nil then selNode:=tvMain.Selected;
    selNode.Selected:=True;
  	CloneNode(selNode);
end;

procedure TfrmMain.mnuCloneItemClick(Sender: TObject);
begin
    CloneNode(tvMain.Selected);
end;
{$ENDREGION}

{$REGION '#�������������� ���� �� ������ � ���������'}
procedure TfrmMain.tabMainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
//������ ������� ��� ��������������
//���� � ������� ���������� �������, ������ ���� ����� �����
//��. tabMainChange
begin
	if tmrRenameTab.Tag=1 then
        tmrRenameTab.Tag:=0
	else
    	tmrRenameTab.Enabled:=True;
end;
procedure TfrmMain.tabMainMouseLeave(Sender: TObject);
//���� ���� �������, �� �������������� �� �����
begin
	tmrRenameTab.Enabled:=False;
end;

procedure TfrmMain.tmrRenameTabTimer(Sender: TObject);
//������ ����������� ����� �������, ���� �� ������� � ���� ����
//���������� � ������������� ���� �����. ��������.
begin
with tvMain.Items[0] do begin
	Selected:=True;
	EditText;
end;
tmrRenameTab.Enabled:=False;
end;
{$ENDREGION}

{$REGION '#������'}
procedure TfrmMain.tvMainChange(Sender: TObject; Node: TTreeNode);
begin
    if Node.Data = nil then Exit;
    GeneratePanel(IXMLNode(Node.Data), fpMain);
    if not bSearchMode then begin
        iSelected:=tvMain.Selected.AbsoluteIndex;
        omgDoc.CurrentRecord:= tvMain.Selected.AbsoluteIndex;
    end;
end;
procedure TfrmMain.tabMainChange(Sender: TObject);
begin
  		tmrRenameTab.Tag:=1;
        iSelected:=0;
    	CleaningPanel(fpMain, True);
        LockWindowUpdate(tabmain.Handle);
        if bSearchMode then        
        	ParsePageToTree(tabMain.TabIndex, tvMain, txtSearch.Text)
        else
            ParsePageToTree(tabMain.TabIndex, tvMain);
        LockWindowUpdate(0);
        tvMain.Items[0].Selected:=True;
end;
{$ENDREGION}

{$REGION '#������ ��������� ������'}
procedure TfrmMain.tvMainCollapsed(Sender: TObject; Node: TTreeNode);
begin
if Node.Selected then SetNodeExpanded(Node);
Log('Collapsing ' + Node.Text);
end;
procedure TfrmMain.tvMainExpanded(Sender: TObject; Node: TTreeNode);
begin
if Node.Selected then SetNodeExpanded(Node);
Log('Expanding ' + Node.Text);
end;
procedure TfrmMain.tvMainCollapsing(Sender: TObject; Node: TTreeNode;
  var AllowCollapse: Boolean);
//������ ������������ ������ ������
begin
if Node.IsFirstNode then AllowCollapse:= False;
end;
{$ENDREGION}

{$REGION '#����&���� � ������'}
procedure TfrmMain.tvMainStartDrag(Sender: TObject;
var DragObject: TDragObject);
begin
    Log('Drag!');
end;

procedure TfrmMain.tvMainDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  trgNode, selNode: TTreeNode;
begin
    Log('Drop!');
  	trgNode := tvMain.GetNodeAt(X, Y);
  	selNode := tvMain.Selected;
    //if trgNode = DragGhostNode then trgNode:= DragGhostNode.getNextSibling;
    
  	if (trgNode = nil) or (trgNode=selNode) then Exit;
	DragAndDrop(trgNode, selNode,(GetKeyState(VK_CONTROL) AND 128) = 128);
    tmrTreeExpand.Enabled:=False;
    intTickToExpand:= 0;
end;

procedure TfrmMain.tvMainDragOver(Sender, Source: TObject; X, Y: Integer;
State: TDragState; var Accept: Boolean);
const
    crDragCopy: Integer = -23;  //��� �� ��� ��������, ����� ����� ���������� ����� � ���������
var
    trgNode, selNode, tmpNode: TTreeNode;
begin
    //Log('DragOver: ' + x.ToString() +',' + y.ToString() +', ' + tvMain.Width.ToString() + ', ' + tvMain.Height.ToString());
    if (GetKeyState(VK_CONTROL) AND 128) = 128 then
        tvMain.DragCursor:= crDragCopy
    else
        tvMain.DragCursor:= crDrag;
  	trgNode := tvMain.GetNodeAt(x, y);
  	selNode := tvMain.Selected;
    nodeToExpand:=trgNode;                                                      //������������� �����, ���� ��������� ����
    tmrTreeExpand.Enabled:=True;
    
    if (trgNode = nil) or
    (selNode = trgNode) or                                                      //�� ������ ��� ��� Drop-� State ���� ����� � dsDragLeave
    (selNode = nil) or                                                          //��� � ��� ����� ���� �� �������� ������, �������
    ((State = dsDragLeave) and not //� �������� ��� ������ ������               //����������� ���� ���� �� ������� ������
    (PtInRect(tvMain.ClientRect, tvMain.ScreenToClient(Mouse.CursorPos))))      //����� ������� ����������, ����� �� �� ������� � ������
    then begin                                                                  //������ MouseInClient ������� �� ��������!!!
        Accept:=False;
        DragAndDropVisual(nil, nil);
        Exit;
    end;
    //��������� �������� �� ��������� ��������� c ��������� �������
    tmpNode:=trgNode;
    while (tmpNode.Parent <> nil) do begin
        tmpNode := tmpNode.Parent;
        if tmpNode = SelNode then begin
            Accept := False;
            DragAndDropVisual(nil, nil);
            Exit;
        end;
    end;
    
    //�����!
    DragAndDropVisual(trgNode, selNode);
end;

procedure TfrmMain.tmrTreeExpandTimer(Sender: TObject);
//���������
begin
    if (oldNode <> nil) and (nodeToExpand <> nil) then
    Log('Expand timer: ' + IntToStr(intTickToExpand) +
        ', OldNode: ' + oldNode.Text + 
        ', ActualNode: ' + nodeToExpand.Text);
        
    if (nodeToExpand = oldNode) then
        if intTickToExpand = 5 then begin
            //nodeToExpand.Expanded:= not nodeToExpand.Expanded;
            if nodeToExpand<>nil then nodeToExpand.Expand(False);
            tmrTreeExpand.Enabled:=False;
            Exit;
        end else 
              inc(intTickToExpand)
    else begin
        intTickToExpand:= 0;
        oldNode:= nodeToExpand;
    end;
end;
procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
mnuGenerator.Click;
end;

{$ENDREGION}

{$Region '#�����'}
procedure TfrmMain.tmrSearchTimer(Sender: TObject);
begin
    //Beep;
    ParsePageToTree(omgDoc.CurrentPage, tvMain, txtSearch.Text);
    with txtSearch do begin
        if Text = '' then
            tvMain.Items[iSelected].Selected:=True
        else    
            tvMain.Items[0].Selected:=True;
        SetFocus;
        RightButton.ImageIndex:=1;
        RightButton.Enabled:=True;
    end;
    tmrSearch.Enabled:=False;
end;

procedure TfrmMain.txtSearchChange(Sender: TObject);
begin
    with txtSearch do begin
        if (Font.Color = clGrayText) then Exit;
        RightButton.ImageIndex:=2;
        tmrSearch.Enabled:=False;
        tmrSearch.Enabled:=True;
    end;

end;

procedure TfrmMain.txtSearchEnter(Sender: TObject);
begin
    bSearchMode:=True;
    with txtSearch do begin
        if (Font.Color = clGrayText) then begin
            if tvMain.Selected <> nil then
                iSelected:=tvMain.Selected.AbsoluteIndex;
            Text:= String.Empty;
            Font.Color:=clWindowText;
            Font.Style:= [];
        end;
    end;
end;

procedure TfrmMain.txtSearchExit(Sender: TObject);
begin
    if (txtSearch.Text = String.Empty) then txtSearchRightButtonClick(nil);
end;

procedure TfrmMain.txtSearchRightButtonClick(Sender: TObject);
begin
    with txtSearch do begin
        Font.Color:=clGrayText;
        Font.Style:= [fsItalic];
        RightButton.ImageIndex:=0;
        RightButton.Enabled:=False;
        if Text <> '' then begin
            ParsePageToTree(omgDoc.CurrentPage, tvMain);
            tvMain.Items[iSelected].Selected:=True;
        end;
        Text:= appLoc.Strings('rsSearchText', rsSearchText);
        tvMain.SetFocus;
        bSearchMode:=False;
    end;
end;

procedure TfrmMain.txtSearchKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key) = vk_Escape then begin
    txtSearchRightButtonClick(nil);
    tvMain.SetFocus;
end;
end;
{$Endregion}

{$REGION '#������ �����'}
procedure TfrmMain.FormShow(Sender: TObject);
begin
WindowsOnTop(bWindowsOnTop, Self);
appLoc.TranslateForm(Self);
end;

procedure TfrmMain.fpMainMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
//������������� ������
begin
fpMain.VertScrollBar.Position:= fpMain.VertScrollBar.Position - WheelDelta div 5;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DocumentClose;
    SaveSettings;
    Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    //��������� ���-��������� �������� �� ��������, � ��������� ������
    Splitter.OnDblClick:= SplitterDblClick;
    //��� ��������� ��������� �������� ��� ������� �����
    SetWindowLongPtr(tabMain.Handle, GWL_EXSTYLE,
    GetWindowLongPtr(tabMain.Handle, GWL_EXSTYLE) or WS_EX_COMPOSITED);
    if not InitGlobal then
        frmMain.Close;
    //����� ������� ��� ����
    RyMenu.MinWidth:=200;
    RyMenu.Add(menuMain, nil);
    RyMenu.Add(menuTreePopup, nil);
end;

procedure TfrmMain.ThemeMenuClick(Sender: TObject);
begin
    With TMenuItem(Sender) do begin
        SetTheme(Caption);
        Checked:=True;
        intThemeIndex:=MenuIndex;
    end;
end;
//������-�������� ������
procedure TfrmMain.mnuShowPassClick(Sender: TObject);
begin
    mnuShowPass.Checked:= not mnuShowPass.Checked;
    bShowPasswords:= mnuShowPass.Checked;
    ShowPasswords(bShowPasswords);
end;

//������ ���� ����
procedure TfrmMain.mnuTopClick(Sender: TObject);
begin
    Beep;
    mnuTop.Checked:= not mnuTop.Checked;
    bWindowsOnTop:= mnuTop.Checked;
    Log('Forms on top:', bWindowsOnTop);
    WindowsOnTop(bWindowsOnTop, frmMain);
    //��� ����� ���� �� ��������
    //if Assigned(frmLog) then WindowsOnTop(bWindowsOnTop, frmLog);
end;
procedure TfrmMain.mnuUpdatesClick(Sender: TObject);
begin
    ShellExecute(frmMain.Handle, 'open', PwideChar(strLink), nil, nil, SW_SHOW);
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
begin
    MessageBox(Self.Handle, PWideChar(Format(rsAbout, [Application.Title, getAppVersion])), PWideChar(rsAboutTitle), MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmMain.mnuWidthIncrease(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
    Width:=200;
end;

procedure TfrmMain.mnuDocumentClick(Sender: TObject);
begin
    mnuPassword.Enabled:= (omgDoc.docType = TOmgDocument.tOmgDocType.dtCrypted);
end;

procedure TfrmMain.mnuSaveAsCryptedClick(Sender: TObject);
begin
omgDoc.SaveAsCrypted;
end;

procedure TfrmMain.mnuServiceClick(Sender: TObject);
begin
//Log('MenuDraw');
mnuClearClip.Enabled:= IsntClipboardEmpty;
end;

//������� ������
procedure TfrmMain.mnuClearClipClick(Sender: TObject);
begin
    ClearClipboard;
end;
{$ENDREGION}

procedure TfrmMain.tbtnHelpClick(Sender: TObject);
begin
 mnuAbout.Click;//omgDoc.SaveAsCrypted;
end;

end.
