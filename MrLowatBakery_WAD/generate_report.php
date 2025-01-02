<?php
require('fpdf/fpdf.php');

// Fetch form data
$reportType = $_POST['report_type'];
$startDate = $_POST['start_date'];
$endDate = $_POST['end_date'];

// Create a PDF instance
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);

// Report Header
$pdf->Cell(0, 10, "Mr. Lowat Bakery - $reportType Report", 0, 1, 'C');
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(0, 10, "Date Range: $startDate to $endDate", 0, 1, 'C');
$pdf->Ln(10);

// Sample Data (Replace with database data)
$data = [
    ['Item' => 'Cheesecake', 'Qty' => 5, 'Total' => '$25'],
    ['Item' => 'Brownies', 'Qty' => 2, 'Total' => '$10'],
];

// Table Header
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(60, 10, 'Item', 1);
$pdf->Cell(60, 10, 'Quantity', 1);
$pdf->Cell(60, 10, 'Total', 1);
$pdf->Ln();

// Table Data
$pdf->SetFont('Arial', '', 12);
foreach ($data as $row) {
    $pdf->Cell(60, 10, $row['Item'], 1);
    $pdf->Cell(60, 10, $row['Qty'], 1);
    $pdf->Cell(60, 10, $row['Total'], 1);
    $pdf->Ln();
}

// Output the PDF
$pdf->Output('D', "$reportType.pdf");
?>
