<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
class Payment extends Model
{
    protected $table = 'thanhtoandiennuoc';
    protected $primaryKey = 'idThanhToan';

    public function OrderRoom(){
        return $this->belongsTo('App\Models\OrderRoom', 'id_order');
    }
    public function addItemPay($data){
        return DB::table('thanhtoandiennuoc')->insert($data);
    }

    public function updatePayment($data,$idThanhToan){
        return DB::table('thanhtoandiennuoc')->where('idThanhToan', $idThanhToan)->update($data);
    }
    public function getItemPayment($idThanhToan){
        return Payment::find($idThanhToan);
    }
    public function total_price_DN_ht($idUser,$month,$year){
        return DB::table('thanhtoandiennuoc')->where('idAdmin', $idUser)
        ->whereYear('ngayThanhToan', $year)->whereMonth('ngayThanhToan', $month)
        ->where('tinhTrang', 1)
        ->sum('tongTienThanhToan');
    }

    // public function check($idOrder){
    //     return DB::table('thanhtoandiennuoc')
    //     ->where('idThuePhong',$idOrder)
    //     ->orWhereMonth('ngayThanhToan',1)
    //     ->first();
    // }
}
