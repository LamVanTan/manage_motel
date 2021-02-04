<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
class PaymentRoom extends Model
{
    protected $table = 'thanhtoanphong';
    protected $primaryKey = 'idThanhToan';

    public function OrderPaymentRoom(){
        return $this->belongsTo('App\Models\OrderRoom', 'id_order');
    }

    public function addItemPaymentRoom($data){
        return DB::table('thanhtoanphong')->insert($data);
    }

    public function updatePaymentRoom($data, $idThanhToan){
        return DB::table('thanhtoanphong')->where('idThanhToan', $idThanhToan)->update($data);
    }
    public function getItemPaymentRoom($idThanhToan){
        return PaymentRoom::find($idThanhToan);
    }
    public function doanhThuThang_ht($idUser,$month,$year){
        return DB::table('thanhtoanphong')->where('idAdmin', $idUser)
        ->whereYear('ngayThanhToan', $year)->whereMonth('ngayThanhToan', $month)
        ->where('tinhTrang', 1)
        ->sum('soTienTra');
    }

}