module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr<i1>, %arg21: !llvm.ptr<i1>, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v3_0", "v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg16, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %23 = llvm.insertvalue %arg20, %22[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.insertvalue %arg28, %26[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.insertvalue %arg30, %30[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.insertvalue %arg26, %31[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.insertvalue %arg27, %33[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.mlir.constant(2147483647 : i32) : i32
    %37 = llvm.mlir.constant(0 : i64) : i64
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.constant(-2147483648 : i32) : i32
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.null : !llvm.ptr<i32>
    %44 = llvm.getelementptr %43[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %46 = llvm.mlir.constant(16 : index) : i64
    %47 = llvm.add %45, %46  : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i32> to i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.sub %46, %51  : i64
    %53 = llvm.add %50, %52  : i64
    %54 = llvm.urem %53, %46  : i64
    %55 = llvm.sub %53, %54  : i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr<i32>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.insertvalue %49, %57[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %40, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %41, %62[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %41, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %42, %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%66 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb5
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%71 : i64)
  ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb4
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.add %69, %74  : i64
    %78 = llvm.getelementptr %76[%77] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %78 : !llvm.ptr<i32>
    %79 = llvm.add %74, %73  : i64
    llvm.br ^bb3(%79 : i64)
  ^bb5:  // pred: ^bb3
    %80 = llvm.add %69, %68  : i64
    llvm.br ^bb1(%80 : i64)
  ^bb6:  // pred: ^bb1
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%81 : i64)
  ^bb7(%84: i64):  // 2 preds: ^bb6, ^bb14
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%86 : i64)
  ^bb9(%89: i64):  // 2 preds: ^bb8, ^bb13
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%91 : i64)
  ^bb11(%94: i64):  // 2 preds: ^bb10, ^bb12
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %96 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %84, %97  : i64
    %99 = llvm.add %98, %89  : i64
    %100 = llvm.add %99, %94  : i64
    %101 = llvm.getelementptr %96[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.add %89, %94  : i64
    %105 = llvm.getelementptr %103[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.icmp "sgt" %106, %102 : i32
    %108 = llvm.select %107, %106, %102 : i1, i32
    %109 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.add %89, %94  : i64
    %111 = llvm.getelementptr %109[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %111 : !llvm.ptr<i32>
    %112 = llvm.add %94, %93  : i64
    llvm.br ^bb11(%112 : i64)
  ^bb13:  // pred: ^bb11
    %113 = llvm.add %89, %88  : i64
    llvm.br ^bb9(%113 : i64)
  ^bb14:  // pred: ^bb9
    %114 = llvm.add %84, %83  : i64
    llvm.br ^bb7(%114 : i64)
  ^bb15:  // pred: ^bb7
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mlir.constant(8 : index) : i64
    %124 = llvm.mlir.constant(8 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i32>
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i32> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i32>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %144 = llvm.insertvalue %115, %143[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %145 = llvm.insertvalue %116, %144[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %146 = llvm.insertvalue %117, %145[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %147 = llvm.insertvalue %118, %146[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %148 = llvm.insertvalue %119, %147[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %149 = llvm.insertvalue %123, %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %150 = llvm.insertvalue %122, %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.insertvalue %121, %150[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.insertvalue %119, %151[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %153 = llvm.insertvalue %120, %152[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%154 : i64)
  ^bb16(%157: i64):  // 2 preds: ^bb15, ^bb29
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%159 : i64)
  ^bb18(%162: i64):  // 2 preds: ^bb17, ^bb28
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%164 : i64)
  ^bb20(%167: i64):  // 2 preds: ^bb19, ^bb27
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%169 : i64)
  ^bb22(%172: i64):  // 2 preds: ^bb21, ^bb26
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%174 : i64)
  ^bb24(%177: i64):  // 2 preds: ^bb23, ^bb25
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %179 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %157, %180  : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %38, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %167, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %38, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.add %190, %177  : i64
    %192 = llvm.getelementptr %179[%191] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %193 = llvm.load %192 : !llvm.ptr<i1>
    %194 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.add %172, %38  : i64
    %196 = llvm.getelementptr %194[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.add %162, %167  : i64
    %200 = llvm.add %199, %38  : i64
    %201 = llvm.add %200, %38  : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %203 = llvm.load %202 : !llvm.ptr<i32>
    %204 = llvm.select %193, %197, %203 : i1, i32
    %205 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %206 = llvm.mlir.constant(8 : index) : i64
    %207 = llvm.mul %157, %206  : i64
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mul %162, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mul %167, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mul %172, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.add %216, %177  : i64
    %218 = llvm.getelementptr %205[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %204, %218 : !llvm.ptr<i32>
    %219 = llvm.add %177, %176  : i64
    llvm.br ^bb24(%219 : i64)
  ^bb26:  // pred: ^bb24
    %220 = llvm.add %172, %171  : i64
    llvm.br ^bb22(%220 : i64)
  ^bb27:  // pred: ^bb22
    %221 = llvm.add %167, %166  : i64
    llvm.br ^bb20(%221 : i64)
  ^bb28:  // pred: ^bb20
    %222 = llvm.add %162, %161  : i64
    llvm.br ^bb18(%222 : i64)
  ^bb29:  // pred: ^bb18
    %223 = llvm.add %157, %156  : i64
    llvm.br ^bb16(%223 : i64)
  ^bb30:  // pred: ^bb16
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i32>
    %233 = llvm.getelementptr %232[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i32> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i32> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i32>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %225, %251[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %226, %252[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %227, %253[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %230, %254[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %229, %255[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %227, %256[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %228, %257[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%259 : i64)
  ^bb31(%262: i64):  // 2 preds: ^bb30, ^bb41
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%264 : i64)
  ^bb33(%267: i64):  // 2 preds: ^bb32, ^bb40
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%269 : i64)
  ^bb35(%272: i64):  // 2 preds: ^bb34, ^bb39
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%274 : i64)
  ^bb37(%277: i64):  // 2 preds: ^bb36, ^bb38
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %279 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mul %262, %280  : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mul %267, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %272, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %277  : i64
    %289 = llvm.getelementptr %279[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %289 : !llvm.ptr<i32>
    %290 = llvm.add %277, %276  : i64
    llvm.br ^bb37(%290 : i64)
  ^bb39:  // pred: ^bb37
    %291 = llvm.add %272, %271  : i64
    llvm.br ^bb35(%291 : i64)
  ^bb40:  // pred: ^bb35
    %292 = llvm.add %267, %266  : i64
    llvm.br ^bb33(%292 : i64)
  ^bb41:  // pred: ^bb33
    %293 = llvm.add %262, %261  : i64
    llvm.br ^bb31(%293 : i64)
  ^bb42:  // pred: ^bb31
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%294 : i64)
  ^bb43(%297: i64):  // 2 preds: ^bb42, ^bb56
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%299 : i64)
  ^bb45(%302: i64):  // 2 preds: ^bb44, ^bb55
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%304 : i64)
  ^bb47(%307: i64):  // 2 preds: ^bb46, ^bb54
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%309 : i64)
  ^bb49(%312: i64):  // 2 preds: ^bb48, ^bb53
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%314 : i64)
  ^bb51(%317: i64):  // 2 preds: ^bb50, ^bb52
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %319 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %320 = llvm.mlir.constant(8 : index) : i64
    %321 = llvm.mul %297, %320  : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mul %302, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mul %307, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %312, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.add %330, %317  : i64
    %332 = llvm.getelementptr %319[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %333 = llvm.load %332 : !llvm.ptr<i32>
    %334 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(4 : index) : i64
    %336 = llvm.mul %297, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %302, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %307, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %312  : i64
    %344 = llvm.getelementptr %334[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.load %344 : !llvm.ptr<i32>
    %346 = llvm.icmp "sgt" %345, %333 : i32
    %347 = llvm.select %346, %345, %333 : i1, i32
    %348 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mul %297, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %302, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %307, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %312  : i64
    %358 = llvm.getelementptr %348[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %347, %358 : !llvm.ptr<i32>
    %359 = llvm.add %317, %316  : i64
    llvm.br ^bb51(%359 : i64)
  ^bb53:  // pred: ^bb51
    %360 = llvm.add %312, %311  : i64
    llvm.br ^bb49(%360 : i64)
  ^bb54:  // pred: ^bb49
    %361 = llvm.add %307, %306  : i64
    llvm.br ^bb47(%361 : i64)
  ^bb55:  // pred: ^bb47
    %362 = llvm.add %302, %301  : i64
    llvm.br ^bb45(%362 : i64)
  ^bb56:  // pred: ^bb45
    %363 = llvm.add %297, %296  : i64
    llvm.br ^bb43(%363 : i64)
  ^bb57:  // pred: ^bb43
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i64>
    %373 = llvm.getelementptr %372[%371] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i64> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i64>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %364, %390[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %370, %394[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %369, %395[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %367, %396[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%399 : i64)
  ^bb58(%402: i64):  // 2 preds: ^bb57, ^bb68
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%404 : i64)
  ^bb60(%407: i64):  // 2 preds: ^bb59, ^bb67
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%409 : i64)
  ^bb62(%412: i64):  // 2 preds: ^bb61, ^bb66
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%414 : i64)
  ^bb64(%417: i64):  // 2 preds: ^bb63, ^bb65
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %419 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mul %402, %420  : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mul %407, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mul %412, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %417  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %430 = llvm.load %429 : !llvm.ptr<i32>
    %431 = llvm.sext %430 : i32 to i64
    %432 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mul %402, %433  : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mul %407, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %412, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.add %440, %417  : i64
    %442 = llvm.getelementptr %432[%441] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %431, %442 : !llvm.ptr<i64>
    %443 = llvm.add %417, %416  : i64
    llvm.br ^bb64(%443 : i64)
  ^bb66:  // pred: ^bb64
    %444 = llvm.add %412, %411  : i64
    llvm.br ^bb62(%444 : i64)
  ^bb67:  // pred: ^bb62
    %445 = llvm.add %407, %406  : i64
    llvm.br ^bb60(%445 : i64)
  ^bb68:  // pred: ^bb60
    %446 = llvm.add %402, %401  : i64
    llvm.br ^bb58(%446 : i64)
  ^bb69:  // pred: ^bb58
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.null : !llvm.ptr<i64>
    %453 = llvm.getelementptr %452[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %454 = llvm.ptrtoint %453 : !llvm.ptr<i64> to i64
    %455 = llvm.mlir.constant(16 : index) : i64
    %456 = llvm.add %454, %455  : i64
    %457 = llvm.call @malloc(%456) : (i64) -> !llvm.ptr<i8>
    %458 = llvm.bitcast %457 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %459 = llvm.ptrtoint %458 : !llvm.ptr<i64> to i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.sub %455, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.urem %462, %455  : i64
    %464 = llvm.sub %462, %463  : i64
    %465 = llvm.inttoptr %464 : i64 to !llvm.ptr<i64>
    %466 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %467 = llvm.insertvalue %458, %466[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %468 = llvm.insertvalue %465, %467[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.insertvalue %469, %468[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.insertvalue %447, %470[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %448, %471[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.insertvalue %448, %473[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.insertvalue %449, %474[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.insertvalue %450, %475[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%477 : i64)
  ^bb70(%480: i64):  // 2 preds: ^bb69, ^bb77
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%482 : i64)
  ^bb72(%485: i64):  // 2 preds: ^bb71, ^bb76
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%487 : i64)
  ^bb74(%490: i64):  // 2 preds: ^bb73, ^bb75
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %492 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mul %480, %493  : i64
    %495 = llvm.add %494, %485  : i64
    %496 = llvm.add %495, %490  : i64
    %497 = llvm.getelementptr %492[%496] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %497 : !llvm.ptr<i64>
    %498 = llvm.add %490, %489  : i64
    llvm.br ^bb74(%498 : i64)
  ^bb76:  // pred: ^bb74
    %499 = llvm.add %485, %484  : i64
    llvm.br ^bb72(%499 : i64)
  ^bb77:  // pred: ^bb72
    %500 = llvm.add %480, %479  : i64
    llvm.br ^bb70(%500 : i64)
  ^bb78:  // pred: ^bb70
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%501 : i64)
  ^bb79(%504: i64):  // 2 preds: ^bb78, ^bb89
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%506 : i64)
  ^bb81(%509: i64):  // 2 preds: ^bb80, ^bb88
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%511 : i64)
  ^bb83(%514: i64):  // 2 preds: ^bb82, ^bb87
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%516 : i64)
  ^bb85(%519: i64):  // 2 preds: ^bb84, ^bb86
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %521 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(4 : index) : i64
    %523 = llvm.mul %504, %522  : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mul %509, %524  : i64
    %526 = llvm.add %523, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %514, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.add %529, %519  : i64
    %531 = llvm.getelementptr %521[%530] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %532 = llvm.load %531 : !llvm.ptr<i64>
    %533 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mul %504, %534  : i64
    %536 = llvm.add %535, %509  : i64
    %537 = llvm.add %536, %514  : i64
    %538 = llvm.getelementptr %533[%537] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %539 = llvm.load %538 : !llvm.ptr<i64>
    %540 = llvm.add %539, %532  : i64
    %541 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mul %504, %542  : i64
    %544 = llvm.add %543, %509  : i64
    %545 = llvm.add %544, %514  : i64
    %546 = llvm.getelementptr %541[%545] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %540, %546 : !llvm.ptr<i64>
    %547 = llvm.add %519, %518  : i64
    llvm.br ^bb85(%547 : i64)
  ^bb87:  // pred: ^bb85
    %548 = llvm.add %514, %513  : i64
    llvm.br ^bb83(%548 : i64)
  ^bb88:  // pred: ^bb83
    %549 = llvm.add %509, %508  : i64
    llvm.br ^bb81(%549 : i64)
  ^bb89:  // pred: ^bb81
    %550 = llvm.add %504, %503  : i64
    llvm.br ^bb79(%550 : i64)
  ^bb90:  // pred: ^bb79
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mlir.null : !llvm.ptr<i32>
    %557 = llvm.getelementptr %556[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i32> to i64
    %559 = llvm.mlir.constant(16 : index) : i64
    %560 = llvm.add %558, %559  : i64
    %561 = llvm.call @malloc(%560) : (i64) -> !llvm.ptr<i8>
    %562 = llvm.bitcast %561 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %563 = llvm.ptrtoint %562 : !llvm.ptr<i32> to i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.sub %559, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.urem %566, %559  : i64
    %568 = llvm.sub %566, %567  : i64
    %569 = llvm.inttoptr %568 : i64 to !llvm.ptr<i32>
    %570 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %571 = llvm.insertvalue %562, %570[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.insertvalue %569, %571[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.insertvalue %573, %572[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %575 = llvm.insertvalue %551, %574[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %576 = llvm.insertvalue %552, %575[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %577 = llvm.insertvalue %553, %576[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %578 = llvm.insertvalue %552, %577[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %579 = llvm.insertvalue %553, %578[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %580 = llvm.insertvalue %554, %579[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%581 : i64)
  ^bb91(%584: i64):  // 2 preds: ^bb90, ^bb98
    %585 = llvm.icmp "slt" %584, %582 : i64
    llvm.cond_br %585, ^bb92, ^bb99
  ^bb92:  // pred: ^bb91
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.mlir.constant(2 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%586 : i64)
  ^bb93(%589: i64):  // 2 preds: ^bb92, ^bb97
    %590 = llvm.icmp "slt" %589, %587 : i64
    llvm.cond_br %590, ^bb94, ^bb98
  ^bb94:  // pred: ^bb93
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%591 : i64)
  ^bb95(%594: i64):  // 2 preds: ^bb94, ^bb96
    %595 = llvm.icmp "slt" %594, %592 : i64
    llvm.cond_br %595, ^bb96, ^bb97
  ^bb96:  // pred: ^bb95
    %596 = llvm.extractvalue %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %597 = llvm.mlir.constant(2 : index) : i64
    %598 = llvm.mul %584, %597  : i64
    %599 = llvm.add %598, %589  : i64
    %600 = llvm.add %599, %594  : i64
    %601 = llvm.getelementptr %596[%600] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %36, %601 : !llvm.ptr<i32>
    %602 = llvm.add %594, %593  : i64
    llvm.br ^bb95(%602 : i64)
  ^bb97:  // pred: ^bb95
    %603 = llvm.add %589, %588  : i64
    llvm.br ^bb93(%603 : i64)
  ^bb98:  // pred: ^bb93
    %604 = llvm.add %584, %583  : i64
    llvm.br ^bb91(%604 : i64)
  ^bb99:  // pred: ^bb91
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%605 : i64)
  ^bb100(%608: i64):  // 2 preds: ^bb99, ^bb110
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%610 : i64)
  ^bb102(%613: i64):  // 2 preds: ^bb101, ^bb109
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%615 : i64)
  ^bb104(%618: i64):  // 2 preds: ^bb103, ^bb108
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %620 = llvm.mlir.constant(0 : index) : i64
    %621 = llvm.mlir.constant(2 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%620 : i64)
  ^bb106(%623: i64):  // 2 preds: ^bb105, ^bb107
    %624 = llvm.icmp "slt" %623, %621 : i64
    llvm.cond_br %624, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %625 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.mlir.constant(4 : index) : i64
    %627 = llvm.mul %608, %626  : i64
    %628 = llvm.mlir.constant(2 : index) : i64
    %629 = llvm.mul %613, %628  : i64
    %630 = llvm.add %627, %629  : i64
    %631 = llvm.mlir.constant(2 : index) : i64
    %632 = llvm.mul %618, %631  : i64
    %633 = llvm.add %630, %632  : i64
    %634 = llvm.add %633, %623  : i64
    %635 = llvm.getelementptr %625[%634] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %636 = llvm.load %635 : !llvm.ptr<i32>
    %637 = llvm.extractvalue %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %638 = llvm.mlir.constant(2 : index) : i64
    %639 = llvm.mul %608, %638  : i64
    %640 = llvm.add %639, %613  : i64
    %641 = llvm.add %640, %618  : i64
    %642 = llvm.getelementptr %637[%641] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %643 = llvm.load %642 : !llvm.ptr<i32>
    %644 = llvm.icmp "slt" %643, %636 : i32
    %645 = llvm.select %644, %643, %636 : i1, i32
    %646 = llvm.extractvalue %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mul %608, %647  : i64
    %649 = llvm.add %648, %613  : i64
    %650 = llvm.add %649, %618  : i64
    %651 = llvm.getelementptr %646[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %645, %651 : !llvm.ptr<i32>
    %652 = llvm.add %623, %622  : i64
    llvm.br ^bb106(%652 : i64)
  ^bb108:  // pred: ^bb106
    %653 = llvm.add %618, %617  : i64
    llvm.br ^bb104(%653 : i64)
  ^bb109:  // pred: ^bb104
    %654 = llvm.add %613, %612  : i64
    llvm.br ^bb102(%654 : i64)
  ^bb110:  // pred: ^bb102
    %655 = llvm.add %608, %607  : i64
    llvm.br ^bb100(%655 : i64)
  ^bb111:  // pred: ^bb100
    %656 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %657 = llvm.insertvalue %476, %656[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %658 = llvm.insertvalue %580, %657[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %658 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0", "v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
    %23 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.extractvalue %22[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.extractvalue %22[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.extractvalue %22[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %29 = llvm.extractvalue %22[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.extractvalue %22[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.extractvalue %22[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.extractvalue %22[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.extractvalue %22[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.extractvalue %22[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    %38 = llvm.getelementptr %0[%37] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %40 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.call @omTensorGetDataPtr(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.insertvalue %43, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %43, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.call @omTensorGetShape(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.call @omTensorGetStrides(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %50 = llvm.mlir.constant(0 : i64) : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %49[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.getelementptr %48[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %49[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %48[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %49[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.getelementptr %48[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %49[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %77, %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %0[%78] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %80 = llvm.load %79 : !llvm.ptr<ptr<i8>>
    %81 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %83 = llvm.call @omTensorGetDataPtr(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %85 = llvm.insertvalue %84, %82[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.insertvalue %84, %85[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %90 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %88[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %95 = llvm.getelementptr %90[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %89[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.getelementptr %90[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.getelementptr %89[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %109 = llvm.getelementptr %90[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.getelementptr %89[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.getelementptr %90[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.getelementptr %89[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.getelementptr %90[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %125, %81 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40, %81) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(3 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(0 : i64) : i64
    %159 = llvm.getelementptr %132[%158] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %159 : !llvm.ptr<ptr<i8>>
    %160 = llvm.mlir.constant(3 : i64) : i64
    %161 = llvm.call @omTensorCreateUntyped(%160) : (i64) -> !llvm.ptr<i8>
    %162 = llvm.mlir.constant(1 : i64) : i64
    %163 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.bitcast %163 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %165 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.bitcast %165 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%161, %162, %164, %166) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %167 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%161, %167) : (!llvm.ptr<i8>, i64) -> ()
    %168 = llvm.call @omTensorGetShape(%161) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %169 = llvm.call @omTensorGetStrides(%161) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %170 = llvm.mlir.constant(0 : i64) : i64
    %171 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.getelementptr %168[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.getelementptr %169[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.mlir.constant(1 : i64) : i64
    %176 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.getelementptr %168[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %179 = llvm.getelementptr %169[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(2 : i64) : i64
    %181 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.getelementptr %168[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.getelementptr %169[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(1 : i64) : i64
    %186 = llvm.getelementptr %132[%185] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %161, %186 : !llvm.ptr<ptr<i8>>
    %187 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %187 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

