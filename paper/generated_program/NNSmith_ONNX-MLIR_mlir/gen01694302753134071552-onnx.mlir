module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %65 = llvm.bitcast %64 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.insertvalue %65, %66[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(4 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.null : !llvm.ptr<i32>
    %81 = llvm.getelementptr %80[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.mlir.constant(16 : index) : i64
    %84 = llvm.add %82, %83  : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.bitcast %85 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %87 = llvm.ptrtoint %86 : !llvm.ptr<i32> to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %83, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %83  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr<i32>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %77, %100[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %78, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %79, %105[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%107 : i64)
  ^bb1(%110: i64):  // 2 preds: ^bb0, ^bb11
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%112 : i64)
  ^bb3(%115: i64):  // 2 preds: ^bb2, ^bb10
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%117 : i64)
  ^bb5(%120: i64):  // 2 preds: ^bb4, ^bb9
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%122 : i64)
  ^bb7(%125: i64):  // 2 preds: ^bb6, ^bb8
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %127 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.add %110, %115  : i64
    %129 = llvm.add %128, %120  : i64
    %130 = llvm.add %129, %125  : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.add %110, %115  : i64
    %135 = llvm.add %134, %120  : i64
    %136 = llvm.add %135, %125  : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %132, %137 : !llvm.ptr<i32>
    %138 = llvm.add %125, %124  : i64
    llvm.br ^bb7(%138 : i64)
  ^bb9:  // pred: ^bb7
    %139 = llvm.add %120, %119  : i64
    llvm.br ^bb5(%139 : i64)
  ^bb10:  // pred: ^bb5
    %140 = llvm.add %115, %114  : i64
    llvm.br ^bb3(%140 : i64)
  ^bb11:  // pred: ^bb3
    %141 = llvm.add %110, %109  : i64
    llvm.br ^bb1(%141 : i64)
  ^bb12:  // pred: ^bb1
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.null : !llvm.ptr<i64>
    %145 = llvm.getelementptr %144[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<i64> to i64
    %147 = llvm.mlir.constant(16 : index) : i64
    %148 = llvm.add %146, %147  : i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr<i8>
    %150 = llvm.bitcast %149 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i64> to i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.sub %147, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.urem %154, %147  : i64
    %156 = llvm.sub %154, %155  : i64
    %157 = llvm.inttoptr %156 : i64 to !llvm.ptr<i64>
    %158 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %159 = llvm.insertvalue %150, %158[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %157, %159[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.insertvalue %161, %160[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %142, %162[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %143, %163[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(4 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%165 : i64)
  ^bb13(%168: i64):  // 2 preds: ^bb12, ^bb14
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %170 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.getelementptr %170[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %171 : !llvm.ptr<i64>
    %172 = llvm.add %168, %167  : i64
    llvm.br ^bb13(%172 : i64)
  ^bb15:  // pred: ^bb13
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.null : !llvm.ptr<i64>
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i64> to i64
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr<i8>
    %181 = llvm.bitcast %180 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<i64> to i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.sub %178, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.urem %185, %178  : i64
    %187 = llvm.sub %185, %186  : i64
    %188 = llvm.inttoptr %187 : i64 to !llvm.ptr<i64>
    %189 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.insertvalue %181, %189[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %173, %193[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %174, %194[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%196 : i64)
  ^bb16(%199: i64):  // 2 preds: ^bb15, ^bb17
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %201 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %205 = llvm.load %204 : !llvm.ptr<i64>
    %206 = llvm.mul %203, %205  : i64
    %207 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %208 : !llvm.ptr<i64>
    %209 = llvm.add %199, %198  : i64
    llvm.br ^bb16(%209 : i64)
  ^bb18:  // pred: ^bb16
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<i1>
    %213 = llvm.getelementptr %212[%210] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i1> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i1> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<i1>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %210, %230[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%233 : i64)
  ^bb19(%236: i64):  // 2 preds: ^bb18, ^bb20
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %238 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.load %239 : !llvm.ptr<i64>
    %241 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %243 = llvm.load %242 : !llvm.ptr<i64>
    %244 = llvm.icmp "eq" %240, %243 : i64
    %245 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.getelementptr %245[%236] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %244, %246 : !llvm.ptr<i1>
    %247 = llvm.add %236, %235  : i64
    llvm.br ^bb19(%247 : i64)
  ^bb21:  // pred: ^bb19
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.null : !llvm.ptr<i64>
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %252 = llvm.ptrtoint %251 : !llvm.ptr<i64> to i64
    %253 = llvm.mlir.constant(16 : index) : i64
    %254 = llvm.add %252, %253  : i64
    %255 = llvm.call @malloc(%254) : (i64) -> !llvm.ptr<i8>
    %256 = llvm.bitcast %255 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i64> to i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.sub %253, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.urem %260, %253  : i64
    %262 = llvm.sub %260, %261  : i64
    %263 = llvm.inttoptr %262 : i64 to !llvm.ptr<i64>
    %264 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %265 = llvm.insertvalue %256, %264[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %263, %265[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.insertvalue %267, %266[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %249, %269[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%271 : i64)
  ^bb22(%274: i64):  // 2 preds: ^bb21, ^bb23
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %276 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%274] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %278 = llvm.load %277 : !llvm.ptr<i1>
    %279 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.getelementptr %279[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %281 = llvm.load %280 : !llvm.ptr<i64>
    %282 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.getelementptr %282[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %284 = llvm.load %283 : !llvm.ptr<i64>
    %285 = llvm.select %278, %281, %284 : i1, i64
    %286 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %285, %287 : !llvm.ptr<i64>
    %288 = llvm.add %274, %273  : i64
    llvm.br ^bb22(%288 : i64)
  ^bb24:  // pred: ^bb22
    %289 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %291 = llvm.load %290 : !llvm.ptr<i64>
    %292 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %297 = llvm.load %296 : !llvm.ptr<i64>
    %298 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %300 = llvm.load %299 : !llvm.ptr<i64>
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mul %300, %297  : i64
    %303 = llvm.mul %302, %294  : i64
    %304 = llvm.mul %303, %291  : i64
    %305 = llvm.mlir.null : !llvm.ptr<i32>
    %306 = llvm.getelementptr %305[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i32> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i32> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i32>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %291, %323[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %294, %324[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %297, %325[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %302, %328[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %300, %329[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %301, %330[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%332 : i64)
  ^bb25(%334: i64):  // 2 preds: ^bb24, ^bb35
    %335 = llvm.icmp "slt" %334, %291 : i64
    llvm.cond_br %335, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%336 : i64)
  ^bb27(%338: i64):  // 2 preds: ^bb26, ^bb34
    %339 = llvm.icmp "slt" %338, %294 : i64
    llvm.cond_br %339, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%340 : i64)
  ^bb29(%342: i64):  // 2 preds: ^bb28, ^bb33
    %343 = llvm.icmp "slt" %342, %297 : i64
    llvm.cond_br %343, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%344 : i64)
  ^bb31(%346: i64):  // 2 preds: ^bb30, ^bb32
    %347 = llvm.icmp "slt" %346, %300 : i64
    llvm.cond_br %347, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %348 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.add %16, %16  : i64
    %350 = llvm.add %349, %16  : i64
    %351 = llvm.add %350, %16  : i64
    %352 = llvm.getelementptr %348[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %353 = llvm.load %352 : !llvm.ptr<i32>
    %354 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.extractvalue %331[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mul %334, %355  : i64
    %357 = llvm.extractvalue %331[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mul %338, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.extractvalue %331[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mul %342, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.add %362, %346  : i64
    %364 = llvm.getelementptr %354[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %353, %364 : !llvm.ptr<i32>
    %365 = llvm.add %346, %345  : i64
    llvm.br ^bb31(%365 : i64)
  ^bb33:  // pred: ^bb31
    %366 = llvm.add %342, %341  : i64
    llvm.br ^bb29(%366 : i64)
  ^bb34:  // pred: ^bb29
    %367 = llvm.add %338, %337  : i64
    llvm.br ^bb27(%367 : i64)
  ^bb35:  // pred: ^bb27
    %368 = llvm.add %334, %333  : i64
    llvm.br ^bb25(%368 : i64)
  ^bb36:  // pred: ^bb25
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.null : !llvm.ptr<i1>
    %375 = llvm.getelementptr %374[%369] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %376 = llvm.ptrtoint %375 : !llvm.ptr<i1> to i64
    %377 = llvm.mlir.constant(16 : index) : i64
    %378 = llvm.add %376, %377  : i64
    %379 = llvm.call @malloc(%378) : (i64) -> !llvm.ptr<i8>
    %380 = llvm.bitcast %379 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<i1> to i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.sub %377, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.urem %384, %377  : i64
    %386 = llvm.sub %384, %385  : i64
    %387 = llvm.inttoptr %386 : i64 to !llvm.ptr<i1>
    %388 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %389 = llvm.insertvalue %380, %388[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %387, %389[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.insertvalue %391, %390[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %369, %392[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %370, %393[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %371, %394[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %372, %395[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %371, %397[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%401 : i64)
  ^bb37(%404: i64):  // 2 preds: ^bb36, ^bb47
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%406 : i64)
  ^bb39(%409: i64):  // 2 preds: ^bb38, ^bb46
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%411 : i64)
  ^bb41(%414: i64):  // 2 preds: ^bb40, ^bb45
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%416 : i64)
  ^bb43(%419: i64):  // 2 preds: ^bb42, ^bb44
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %421 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.add %404, %409  : i64
    %423 = llvm.add %422, %414  : i64
    %424 = llvm.add %423, %419  : i64
    %425 = llvm.getelementptr %421[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.add %404, %409  : i64
    %429 = llvm.add %428, %414  : i64
    %430 = llvm.add %429, %419  : i64
    %431 = llvm.getelementptr %427[%430] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %432 = llvm.load %431 : !llvm.ptr<i32>
    %433 = llvm.icmp "slt" %426, %432 : i32
    %434 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.add %404, %409  : i64
    %436 = llvm.add %435, %414  : i64
    %437 = llvm.add %436, %419  : i64
    %438 = llvm.getelementptr %434[%437] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %433, %438 : !llvm.ptr<i1>
    %439 = llvm.add %419, %418  : i64
    llvm.br ^bb43(%439 : i64)
  ^bb45:  // pred: ^bb43
    %440 = llvm.add %414, %413  : i64
    llvm.br ^bb41(%440 : i64)
  ^bb46:  // pred: ^bb41
    %441 = llvm.add %409, %408  : i64
    llvm.br ^bb39(%441 : i64)
  ^bb47:  // pred: ^bb39
    %442 = llvm.add %404, %403  : i64
    llvm.br ^bb37(%442 : i64)
  ^bb48:  // pred: ^bb37
    %443 = llvm.mlir.constant(4 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.null : !llvm.ptr<i64>
    %446 = llvm.getelementptr %445[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i64> to i64
    %448 = llvm.mlir.constant(16 : index) : i64
    %449 = llvm.add %447, %448  : i64
    %450 = llvm.call @malloc(%449) : (i64) -> !llvm.ptr<i8>
    %451 = llvm.bitcast %450 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i64> to i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.sub %448, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.urem %455, %448  : i64
    %457 = llvm.sub %455, %456  : i64
    %458 = llvm.inttoptr %457 : i64 to !llvm.ptr<i64>
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %460 = llvm.insertvalue %451, %459[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %458, %460[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %443, %463[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.insertvalue %444, %464[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%466 : i64)
  ^bb49(%469: i64):  // 2 preds: ^bb48, ^bb50
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %471 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.getelementptr %471[%469] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %472 : !llvm.ptr<i64>
    %473 = llvm.add %469, %468  : i64
    llvm.br ^bb49(%473 : i64)
  ^bb51:  // pred: ^bb49
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.null : !llvm.ptr<i64>
    %477 = llvm.getelementptr %476[%474] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %478 = llvm.ptrtoint %477 : !llvm.ptr<i64> to i64
    %479 = llvm.mlir.constant(16 : index) : i64
    %480 = llvm.add %478, %479  : i64
    %481 = llvm.call @malloc(%480) : (i64) -> !llvm.ptr<i8>
    %482 = llvm.bitcast %481 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %483 = llvm.ptrtoint %482 : !llvm.ptr<i64> to i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.sub %479, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.urem %486, %479  : i64
    %488 = llvm.sub %486, %487  : i64
    %489 = llvm.inttoptr %488 : i64 to !llvm.ptr<i64>
    %490 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %491 = llvm.insertvalue %482, %490[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %489, %491[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.insertvalue %493, %492[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.insertvalue %474, %494[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.insertvalue %475, %495[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%497 : i64)
  ^bb52(%500: i64):  // 2 preds: ^bb51, ^bb53
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %502 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.getelementptr %502[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %504 = llvm.load %503 : !llvm.ptr<i64>
    %505 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %506 = llvm.load %505 : !llvm.ptr<i64>
    %507 = llvm.mul %504, %506  : i64
    %508 = llvm.extractvalue %496[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.getelementptr %508[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %507, %509 : !llvm.ptr<i64>
    %510 = llvm.add %500, %499  : i64
    llvm.br ^bb52(%510 : i64)
  ^bb54:  // pred: ^bb52
    %511 = llvm.mlir.constant(4 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.null : !llvm.ptr<i1>
    %514 = llvm.getelementptr %513[%511] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %515 = llvm.ptrtoint %514 : !llvm.ptr<i1> to i64
    %516 = llvm.mlir.constant(16 : index) : i64
    %517 = llvm.add %515, %516  : i64
    %518 = llvm.call @malloc(%517) : (i64) -> !llvm.ptr<i8>
    %519 = llvm.bitcast %518 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %520 = llvm.ptrtoint %519 : !llvm.ptr<i1> to i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.sub %516, %521  : i64
    %523 = llvm.add %520, %522  : i64
    %524 = llvm.urem %523, %516  : i64
    %525 = llvm.sub %523, %524  : i64
    %526 = llvm.inttoptr %525 : i64 to !llvm.ptr<i1>
    %527 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %528 = llvm.insertvalue %519, %527[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.insertvalue %526, %528[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.insertvalue %530, %529[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.insertvalue %511, %531[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.insertvalue %512, %532[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%534 : i64)
  ^bb55(%537: i64):  // 2 preds: ^bb54, ^bb56
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %539 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.getelementptr %539[%537] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %541 = llvm.load %540 : !llvm.ptr<i64>
    %542 = llvm.extractvalue %496[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %543 = llvm.getelementptr %542[%537] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %544 = llvm.load %543 : !llvm.ptr<i64>
    %545 = llvm.icmp "eq" %541, %544 : i64
    %546 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.getelementptr %546[%537] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %545, %547 : !llvm.ptr<i1>
    %548 = llvm.add %537, %536  : i64
    llvm.br ^bb55(%548 : i64)
  ^bb57:  // pred: ^bb55
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<i64>
    %552 = llvm.getelementptr %551[%549] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i64> to i64
    %554 = llvm.mlir.constant(16 : index) : i64
    %555 = llvm.add %553, %554  : i64
    %556 = llvm.call @malloc(%555) : (i64) -> !llvm.ptr<i8>
    %557 = llvm.bitcast %556 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i64> to i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.sub %554, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.urem %561, %554  : i64
    %563 = llvm.sub %561, %562  : i64
    %564 = llvm.inttoptr %563 : i64 to !llvm.ptr<i64>
    %565 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %566 = llvm.insertvalue %557, %565[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %564, %566[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.insertvalue %568, %567[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.insertvalue %549, %569[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.insertvalue %550, %570[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%572 : i64)
  ^bb58(%575: i64):  // 2 preds: ^bb57, ^bb59
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %577 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.getelementptr %577[%575] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %579 = llvm.load %578 : !llvm.ptr<i1>
    %580 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.getelementptr %580[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %582 = llvm.load %581 : !llvm.ptr<i64>
    %583 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.getelementptr %583[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %585 = llvm.load %584 : !llvm.ptr<i64>
    %586 = llvm.select %579, %582, %585 : i1, i64
    %587 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.getelementptr %587[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %586, %588 : !llvm.ptr<i64>
    %589 = llvm.add %575, %574  : i64
    llvm.br ^bb58(%589 : i64)
  ^bb60:  // pred: ^bb58
    %590 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.getelementptr %590[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %592 = llvm.load %591 : !llvm.ptr<i64>
    %593 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.getelementptr %593[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %595 = llvm.load %594 : !llvm.ptr<i64>
    %596 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.getelementptr %596[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %598 = llvm.load %597 : !llvm.ptr<i64>
    %599 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.getelementptr %599[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %601 = llvm.load %600 : !llvm.ptr<i64>
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mul %601, %598  : i64
    %604 = llvm.mul %603, %595  : i64
    %605 = llvm.mul %604, %592  : i64
    %606 = llvm.mlir.null : !llvm.ptr<i32>
    %607 = llvm.getelementptr %606[%605] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %608 = llvm.ptrtoint %607 : !llvm.ptr<i32> to i64
    %609 = llvm.mlir.constant(16 : index) : i64
    %610 = llvm.add %608, %609  : i64
    %611 = llvm.call @malloc(%610) : (i64) -> !llvm.ptr<i8>
    %612 = llvm.bitcast %611 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %613 = llvm.ptrtoint %612 : !llvm.ptr<i32> to i64
    %614 = llvm.mlir.constant(1 : index) : i64
    %615 = llvm.sub %609, %614  : i64
    %616 = llvm.add %613, %615  : i64
    %617 = llvm.urem %616, %609  : i64
    %618 = llvm.sub %616, %617  : i64
    %619 = llvm.inttoptr %618 : i64 to !llvm.ptr<i32>
    %620 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %621 = llvm.insertvalue %612, %620[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.insertvalue %619, %621[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mlir.constant(0 : index) : i64
    %624 = llvm.insertvalue %623, %622[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.insertvalue %592, %624[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.insertvalue %595, %625[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %598, %626[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %601, %627[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %604, %628[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %603, %629[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %601, %630[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %602, %631[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%633 : i64)
  ^bb61(%635: i64):  // 2 preds: ^bb60, ^bb71
    %636 = llvm.icmp "slt" %635, %592 : i64
    llvm.cond_br %636, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%637 : i64)
  ^bb63(%639: i64):  // 2 preds: ^bb62, ^bb70
    %640 = llvm.icmp "slt" %639, %595 : i64
    llvm.cond_br %640, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%641 : i64)
  ^bb65(%643: i64):  // 2 preds: ^bb64, ^bb69
    %644 = llvm.icmp "slt" %643, %598 : i64
    llvm.cond_br %644, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%645 : i64)
  ^bb67(%647: i64):  // 2 preds: ^bb66, ^bb68
    %648 = llvm.icmp "slt" %647, %601 : i64
    llvm.cond_br %648, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %649 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.add %16, %16  : i64
    %651 = llvm.add %650, %16  : i64
    %652 = llvm.add %651, %16  : i64
    %653 = llvm.getelementptr %649[%652] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %654 = llvm.load %653 : !llvm.ptr<i32>
    %655 = llvm.extractvalue %632[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %656 = llvm.extractvalue %632[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mul %635, %656  : i64
    %658 = llvm.extractvalue %632[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mul %639, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.extractvalue %632[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.mul %643, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.add %663, %647  : i64
    %665 = llvm.getelementptr %655[%664] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %654, %665 : !llvm.ptr<i32>
    %666 = llvm.add %647, %646  : i64
    llvm.br ^bb67(%666 : i64)
  ^bb69:  // pred: ^bb67
    %667 = llvm.add %643, %642  : i64
    llvm.br ^bb65(%667 : i64)
  ^bb70:  // pred: ^bb65
    %668 = llvm.add %639, %638  : i64
    llvm.br ^bb63(%668 : i64)
  ^bb71:  // pred: ^bb63
    %669 = llvm.add %635, %634  : i64
    llvm.br ^bb61(%669 : i64)
  ^bb72:  // pred: ^bb61
    %670 = llvm.mlir.constant(1 : index) : i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(2 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.mlir.constant(1 : index) : i64
    %675 = llvm.mlir.constant(2 : index) : i64
    %676 = llvm.mlir.constant(2 : index) : i64
    %677 = llvm.mlir.null : !llvm.ptr<i1>
    %678 = llvm.getelementptr %677[%676] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %679 = llvm.ptrtoint %678 : !llvm.ptr<i1> to i64
    %680 = llvm.mlir.constant(16 : index) : i64
    %681 = llvm.add %679, %680  : i64
    %682 = llvm.call @malloc(%681) : (i64) -> !llvm.ptr<i8>
    %683 = llvm.bitcast %682 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %684 = llvm.ptrtoint %683 : !llvm.ptr<i1> to i64
    %685 = llvm.mlir.constant(1 : index) : i64
    %686 = llvm.sub %680, %685  : i64
    %687 = llvm.add %684, %686  : i64
    %688 = llvm.urem %687, %680  : i64
    %689 = llvm.sub %687, %688  : i64
    %690 = llvm.inttoptr %689 : i64 to !llvm.ptr<i1>
    %691 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %692 = llvm.insertvalue %683, %691[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.insertvalue %690, %692[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.mlir.constant(0 : index) : i64
    %695 = llvm.insertvalue %694, %693[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.insertvalue %670, %695[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.insertvalue %671, %696[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.insertvalue %672, %697[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.insertvalue %673, %698[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %675, %699[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %672, %700[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %673, %701[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %674, %702[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.icmp "sgt" %592, %15 : i64
    %705 = llvm.icmp "sgt" %595, %15 : i64
    %706 = llvm.icmp "sgt" %598, %15 : i64
    %707 = llvm.icmp "sgt" %601, %15 : i64
    %708 = llvm.icmp "sgt" %291, %15 : i64
    %709 = llvm.icmp "sgt" %294, %15 : i64
    %710 = llvm.icmp "sgt" %297, %15 : i64
    %711 = llvm.icmp "sgt" %300, %15 : i64
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%712 : i64)
  ^bb73(%715: i64):  // 2 preds: ^bb72, ^bb83
    %716 = llvm.icmp "slt" %715, %713 : i64
    llvm.cond_br %716, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %717 = llvm.mlir.constant(0 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    %719 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%717 : i64)
  ^bb75(%720: i64):  // 2 preds: ^bb74, ^bb82
    %721 = llvm.icmp "slt" %720, %718 : i64
    llvm.cond_br %721, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %722 = llvm.mlir.constant(0 : index) : i64
    %723 = llvm.mlir.constant(2 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%722 : i64)
  ^bb77(%725: i64):  // 2 preds: ^bb76, ^bb81
    %726 = llvm.icmp "slt" %725, %723 : i64
    llvm.cond_br %726, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %727 = llvm.mlir.constant(0 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    %729 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%727 : i64)
  ^bb79(%730: i64):  // 2 preds: ^bb78, ^bb80
    %731 = llvm.icmp "slt" %730, %728 : i64
    llvm.cond_br %731, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %732 = llvm.select %704, %715, %16 : i1, i64
    %733 = llvm.select %705, %720, %16 : i1, i64
    %734 = llvm.select %706, %725, %16 : i1, i64
    %735 = llvm.select %707, %730, %16 : i1, i64
    %736 = llvm.extractvalue %632[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %737 = llvm.extractvalue %632[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.mul %732, %737  : i64
    %739 = llvm.extractvalue %632[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.mul %733, %739  : i64
    %741 = llvm.add %738, %740  : i64
    %742 = llvm.extractvalue %632[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.mul %734, %742  : i64
    %744 = llvm.add %741, %743  : i64
    %745 = llvm.add %744, %735  : i64
    %746 = llvm.getelementptr %736[%745] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %747 = llvm.load %746 : !llvm.ptr<i32>
    %748 = llvm.select %708, %715, %16 : i1, i64
    %749 = llvm.select %709, %720, %16 : i1, i64
    %750 = llvm.select %710, %725, %16 : i1, i64
    %751 = llvm.select %711, %730, %16 : i1, i64
    %752 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %753 = llvm.extractvalue %331[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %754 = llvm.mul %748, %753  : i64
    %755 = llvm.extractvalue %331[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %756 = llvm.mul %749, %755  : i64
    %757 = llvm.add %754, %756  : i64
    %758 = llvm.extractvalue %331[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.mul %750, %758  : i64
    %760 = llvm.add %757, %759  : i64
    %761 = llvm.add %760, %751  : i64
    %762 = llvm.getelementptr %752[%761] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %763 = llvm.load %762 : !llvm.ptr<i32>
    %764 = llvm.icmp "eq" %747, %763 : i32
    %765 = llvm.extractvalue %703[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %766 = llvm.mlir.constant(2 : index) : i64
    %767 = llvm.mul %715, %766  : i64
    %768 = llvm.mlir.constant(2 : index) : i64
    %769 = llvm.mul %720, %768  : i64
    %770 = llvm.add %767, %769  : i64
    %771 = llvm.add %770, %725  : i64
    %772 = llvm.add %771, %730  : i64
    %773 = llvm.getelementptr %765[%772] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %764, %773 : !llvm.ptr<i1>
    %774 = llvm.add %730, %729  : i64
    llvm.br ^bb79(%774 : i64)
  ^bb81:  // pred: ^bb79
    %775 = llvm.add %725, %724  : i64
    llvm.br ^bb77(%775 : i64)
  ^bb82:  // pred: ^bb77
    %776 = llvm.add %720, %719  : i64
    llvm.br ^bb75(%776 : i64)
  ^bb83:  // pred: ^bb75
    %777 = llvm.add %715, %714  : i64
    llvm.br ^bb73(%777 : i64)
  ^bb84:  // pred: ^bb73
    %778 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %779 = llvm.insertvalue %400, %778[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %780 = llvm.insertvalue %703, %779[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %780 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<139 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<139 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

