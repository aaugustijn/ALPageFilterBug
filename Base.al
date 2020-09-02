page 50100 Base
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(SetFilterWithConst)
            {
                trigger OnAction()
                var
                    ResourcesConstPage: Page ResourcesConst;
                begin
                    ResourcesConstPage.Run();
                end;
            }

            action(SetFilterWithVariable)
            {
                trigger OnAction()
                var
                    ResourcesVariablePage: Page ResourcesVariable;
                begin
                    ResourcesVariablePage.SetNoFilter('TEST');
                    ResourcesVariablePage.Run();
                end;
            }
        }
    }

    // Create a record for test purposes.
    local procedure CreateRecord()
    var
        Rec: Record Resource;
    begin
        Rec.SetRange("No.", 'TEST');
        if Rec.FindFirst() then
            exit;

        Rec.Init();
        Rec."No." := 'TEST';
        Rec.Name := 'Test :)';
        Rec.Insert();
    end;

    trigger OnOpenPage()
    begin
        CreateRecord();
    end;
}