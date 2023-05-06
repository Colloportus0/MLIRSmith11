module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @Resize_Size(!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @"om_/Resize"("/Resize") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_floor("floor") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_cubic("cubic") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_half_pixel("half_pixel") {addr_space = 0 : i32, alignment = 16 : i64}
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
  llvm.mlir.global internal constant @constant_0(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<4 x i64>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.mlir.constant(4 : index) : i64
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<i32>
    %33 = llvm.getelementptr %32[%31] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i32> to i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i32> to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %35, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %35  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %24, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %25, %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %26, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %30, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %27, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %28, %57[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb11
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%64 : i64)
  ^bb3(%67: i64):  // 2 preds: ^bb2, ^bb10
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%69 : i64)
  ^bb5(%72: i64):  // 2 preds: ^bb4, ^bb9
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%74 : i64)
  ^bb7(%77: i64):  // 2 preds: ^bb6, ^bb8
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %79 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mul %62, %80  : i64
    %82 = llvm.mlir.constant(4 : index) : i64
    %83 = llvm.mul %67, %82  : i64
    %84 = llvm.add %81, %83  : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mul %72, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.add %87, %77  : i64
    %89 = llvm.getelementptr %79[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(4 : index) : i64
    %93 = llvm.mul %62, %92  : i64
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %67, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %72, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.add %99, %77  : i64
    %101 = llvm.getelementptr %91[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %90, %101 : !llvm.ptr<i32>
    %102 = llvm.add %77, %76  : i64
    llvm.br ^bb7(%102 : i64)
  ^bb9:  // pred: ^bb7
    %103 = llvm.add %72, %71  : i64
    llvm.br ^bb5(%103 : i64)
  ^bb10:  // pred: ^bb5
    %104 = llvm.add %67, %66  : i64
    llvm.br ^bb3(%104 : i64)
  ^bb11:  // pred: ^bb3
    %105 = llvm.add %62, %61  : i64
    llvm.br ^bb1(%105 : i64)
  ^bb12:  // pred: ^bb1
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mlir.null : !llvm.ptr<f64>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<f64> to i64
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.add %116, %117  : i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<f64> to i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.sub %117, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.urem %124, %117  : i64
    %126 = llvm.sub %124, %125  : i64
    %127 = llvm.inttoptr %126 : i64 to !llvm.ptr<f64>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %129 = llvm.insertvalue %120, %128[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %112, %136[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %109, %138[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %110, %139[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%141 : i64)
  ^bb13(%144: i64):  // 2 preds: ^bb12, ^bb23
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%146 : i64)
  ^bb15(%149: i64):  // 2 preds: ^bb14, ^bb22
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%151 : i64)
  ^bb17(%154: i64):  // 2 preds: ^bb16, ^bb21
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%156 : i64)
  ^bb19(%159: i64):  // 2 preds: ^bb18, ^bb20
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %161 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mul %144, %162  : i64
    %164 = llvm.mlir.constant(4 : index) : i64
    %165 = llvm.mul %149, %164  : i64
    %166 = llvm.add %163, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %154, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.add %169, %159  : i64
    %171 = llvm.getelementptr %161[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.load %171 : !llvm.ptr<i32>
    %173 = llvm.sitofp %172 : i32 to f64
    %174 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mul %144, %175  : i64
    %177 = llvm.mlir.constant(4 : index) : i64
    %178 = llvm.mul %149, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %154, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.add %182, %159  : i64
    %184 = llvm.getelementptr %174[%183] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %173, %184 : !llvm.ptr<f64>
    %185 = llvm.add %159, %158  : i64
    llvm.br ^bb19(%185 : i64)
  ^bb21:  // pred: ^bb19
    %186 = llvm.add %154, %153  : i64
    llvm.br ^bb17(%186 : i64)
  ^bb22:  // pred: ^bb17
    %187 = llvm.add %149, %148  : i64
    llvm.br ^bb15(%187 : i64)
  ^bb23:  // pred: ^bb15
    %188 = llvm.add %144, %143  : i64
    llvm.br ^bb13(%188 : i64)
  ^bb24:  // pred: ^bb13
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.null : !llvm.ptr<f64>
    %198 = llvm.getelementptr %197[%196] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<f64> to i64
    %200 = llvm.mlir.constant(16 : index) : i64
    %201 = llvm.add %199, %200  : i64
    %202 = llvm.call @malloc(%201) : (i64) -> !llvm.ptr<i8>
    %203 = llvm.bitcast %202 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<f64> to i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.sub %200, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.urem %207, %200  : i64
    %209 = llvm.sub %207, %208  : i64
    %210 = llvm.inttoptr %209 : i64 to !llvm.ptr<f64>
    %211 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %212 = llvm.insertvalue %203, %211[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %195, %219[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %192, %221[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %193, %222[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%224 : i64)
  ^bb25(%227: i64):  // 2 preds: ^bb24, ^bb35
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%229 : i64)
  ^bb27(%232: i64):  // 2 preds: ^bb26, ^bb34
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%234 : i64)
  ^bb29(%237: i64):  // 2 preds: ^bb28, ^bb33
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%239 : i64)
  ^bb31(%242: i64):  // 2 preds: ^bb30, ^bb32
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %244 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %227, %245  : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mul %232, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %237, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.add %252, %242  : i64
    %254 = llvm.getelementptr %244[%253] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %255 = llvm.load %254 : !llvm.ptr<f64>
    %256 = llvm.intr.sin(%255)  : (f64) -> f64
    %257 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mul %227, %258  : i64
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mul %232, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %237, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %242  : i64
    %267 = llvm.getelementptr %257[%266] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %256, %267 : !llvm.ptr<f64>
    %268 = llvm.add %242, %241  : i64
    llvm.br ^bb31(%268 : i64)
  ^bb33:  // pred: ^bb31
    %269 = llvm.add %237, %236  : i64
    llvm.br ^bb29(%269 : i64)
  ^bb34:  // pred: ^bb29
    %270 = llvm.add %232, %231  : i64
    llvm.br ^bb27(%270 : i64)
  ^bb35:  // pred: ^bb27
    %271 = llvm.add %227, %226  : i64
    llvm.br ^bb25(%271 : i64)
  ^bb36:  // pred: ^bb25
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<f64>
    %278 = llvm.getelementptr %277[%272] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<f64> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<f64> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<f64>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %272, %295[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %273, %296[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %274, %297[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %275, %298[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(4 : i64) : i64
    %305 = llvm.call @omTensorCreateUntyped(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.mlir.constant(0 : i64) : i64
    %307 = llvm.extractvalue %303[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.bitcast %307 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %309 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.bitcast %309 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%305, %306, %308, %310) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %311 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%305, %311) : (!llvm.ptr<i8>, i64) -> ()
    %312 = llvm.call @omTensorGetShape(%305) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %313 = llvm.call @omTensorGetStrides(%305) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %314 = llvm.mlir.constant(0 : i64) : i64
    %315 = llvm.extractvalue %303[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.getelementptr %312[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %315, %316 : !llvm.ptr<i64>
    %317 = llvm.extractvalue %303[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.getelementptr %313[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %317, %318 : !llvm.ptr<i64>
    %319 = llvm.mlir.constant(1 : i64) : i64
    %320 = llvm.extractvalue %303[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.getelementptr %312[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %320, %321 : !llvm.ptr<i64>
    %322 = llvm.extractvalue %303[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.getelementptr %313[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %322, %323 : !llvm.ptr<i64>
    %324 = llvm.mlir.constant(2 : i64) : i64
    %325 = llvm.extractvalue %303[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.getelementptr %312[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %325, %326 : !llvm.ptr<i64>
    %327 = llvm.extractvalue %303[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.getelementptr %313[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %327, %328 : !llvm.ptr<i64>
    %329 = llvm.mlir.constant(3 : i64) : i64
    %330 = llvm.extractvalue %303[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.getelementptr %312[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %330, %331 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %303[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.getelementptr %313[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %332, %333 : !llvm.ptr<i64>
    %334 = llvm.mlir.constant(4 : i64) : i64
    %335 = llvm.call @omTensorCreateUntyped(%334) : (i64) -> !llvm.ptr<i8>
    %336 = llvm.mlir.constant(0 : i64) : i64
    %337 = llvm.extractvalue %140[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.bitcast %337 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %339 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.bitcast %339 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%335, %336, %338, %340) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %341 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%335, %341) : (!llvm.ptr<i8>, i64) -> ()
    %342 = llvm.call @omTensorGetShape(%335) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %343 = llvm.call @omTensorGetStrides(%335) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %344 = llvm.mlir.constant(0 : i64) : i64
    %345 = llvm.extractvalue %140[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.getelementptr %342[%344] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %345, %346 : !llvm.ptr<i64>
    %347 = llvm.extractvalue %140[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.getelementptr %343[%344] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %347, %348 : !llvm.ptr<i64>
    %349 = llvm.mlir.constant(1 : i64) : i64
    %350 = llvm.extractvalue %140[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.getelementptr %342[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %350, %351 : !llvm.ptr<i64>
    %352 = llvm.extractvalue %140[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.getelementptr %343[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %352, %353 : !llvm.ptr<i64>
    %354 = llvm.mlir.constant(2 : i64) : i64
    %355 = llvm.extractvalue %140[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.getelementptr %342[%354] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %355, %356 : !llvm.ptr<i64>
    %357 = llvm.extractvalue %140[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.getelementptr %343[%354] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %357, %358 : !llvm.ptr<i64>
    %359 = llvm.mlir.constant(3 : i64) : i64
    %360 = llvm.extractvalue %140[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.getelementptr %342[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %360, %361 : !llvm.ptr<i64>
    %362 = llvm.extractvalue %140[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.getelementptr %343[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %362, %363 : !llvm.ptr<i64>
    %364 = llvm.mlir.constant(1 : i64) : i64
    %365 = llvm.call @omTensorCreateUntyped(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.mlir.constant(0 : i64) : i64
    %367 = llvm.extractvalue %23[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.bitcast %367 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %369 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.bitcast %369 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%365, %366, %368, %370) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %371 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%365, %371) : (!llvm.ptr<i8>, i64) -> ()
    %372 = llvm.call @omTensorGetShape(%365) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %373 = llvm.call @omTensorGetStrides(%365) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %374 = llvm.mlir.constant(0 : i64) : i64
    %375 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.getelementptr %372[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %375, %376 : !llvm.ptr<i64>
    %377 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %373[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %377, %378 : !llvm.ptr<i64>
    %379 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %380 = llvm.mlir.constant(0 : i64) : i64
    %381 = llvm.getelementptr %379[%380, %380] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %382 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %383 = llvm.mlir.constant(0 : si64) : i64
    %384 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %385 = llvm.mlir.addressof @om_cubic : !llvm.ptr<array<5 x i8>>
    %386 = llvm.mlir.constant(0 : i64) : i64
    %387 = llvm.getelementptr %385[%386, %386] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %388 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %389 = llvm.mlir.constant(0 : i64) : i64
    %390 = llvm.getelementptr %388[%389, %389] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %391 = llvm.mlir.addressof @"om_/Resize" : !llvm.ptr<array<7 x i8>>
    %392 = llvm.mlir.constant(0 : i64) : i64
    %393 = llvm.getelementptr %391[%392, %392] : (!llvm.ptr<array<7 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%305, %335, %365, %381, %382, %383, %384, %387, %390, %393) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.null : !llvm.ptr<f64>
    %403 = llvm.getelementptr %402[%401] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %404 = llvm.ptrtoint %403 : !llvm.ptr<f64> to i64
    %405 = llvm.mlir.constant(16 : index) : i64
    %406 = llvm.add %404, %405  : i64
    %407 = llvm.call @malloc(%406) : (i64) -> !llvm.ptr<i8>
    %408 = llvm.bitcast %407 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %409 = llvm.ptrtoint %408 : !llvm.ptr<f64> to i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.sub %405, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.urem %412, %405  : i64
    %414 = llvm.sub %412, %413  : i64
    %415 = llvm.inttoptr %414 : i64 to !llvm.ptr<f64>
    %416 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %417 = llvm.insertvalue %408, %416[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %415, %417[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.insertvalue %419, %418[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %396, %422[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %397, %423[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %400, %424[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %399, %425[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %397, %426[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %398, %427[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%429 : i64)
  ^bb37(%432: i64):  // 2 preds: ^bb36, ^bb47
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%434 : i64)
  ^bb39(%437: i64):  // 2 preds: ^bb38, ^bb46
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%439 : i64)
  ^bb41(%442: i64):  // 2 preds: ^bb40, ^bb45
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%444 : i64)
  ^bb43(%447: i64):  // 2 preds: ^bb42, ^bb44
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %449 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mul %432, %450  : i64
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mul %437, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mul %442, %455  : i64
    %457 = llvm.add %454, %456  : i64
    %458 = llvm.add %457, %447  : i64
    %459 = llvm.getelementptr %449[%458] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %460 = llvm.load %459 : !llvm.ptr<f64>
    %461 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.add %432, %437  : i64
    %463 = llvm.add %462, %12  : i64
    %464 = llvm.add %463, %12  : i64
    %465 = llvm.getelementptr %461[%464] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %466 = llvm.load %465 : !llvm.ptr<f64>
    %467 = llvm.fdiv %460, %466  : f64
    %468 = llvm.extractvalue %428[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %432, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %437, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %442, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %447  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %467, %478 : !llvm.ptr<f64>
    %479 = llvm.add %447, %446  : i64
    llvm.br ^bb43(%479 : i64)
  ^bb45:  // pred: ^bb43
    %480 = llvm.add %442, %441  : i64
    llvm.br ^bb41(%480 : i64)
  ^bb46:  // pred: ^bb41
    %481 = llvm.add %437, %436  : i64
    llvm.br ^bb39(%481 : i64)
  ^bb47:  // pred: ^bb39
    %482 = llvm.add %432, %431  : i64
    llvm.br ^bb37(%482 : i64)
  ^bb48:  // pred: ^bb37
    %483 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %484 = llvm.insertvalue %223, %483[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %485 = llvm.insertvalue %428, %484[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %485 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

