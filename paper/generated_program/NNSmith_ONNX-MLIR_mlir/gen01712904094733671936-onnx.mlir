module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 3] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @"om_/Resize_1"("/Resize_1") {addr_space = 0 : i32, alignment = 16 : i64}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
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
    %12 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<4 x i64>>
    %13 = llvm.bitcast %12 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(4 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(3 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(3 : index) : i64
    %29 = llvm.mlir.constant(3 : index) : i64
    %30 = llvm.mlir.constant(3 : index) : i64
    %31 = llvm.mlir.null : !llvm.ptr<i32>
    %32 = llvm.getelementptr %31[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr<i32> to i64
    %34 = llvm.mlir.constant(16 : index) : i64
    %35 = llvm.add %33, %34  : i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr<i8>
    %37 = llvm.bitcast %36 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i32> to i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.sub %34, %39  : i64
    %41 = llvm.add %38, %40  : i64
    %42 = llvm.urem %41, %34  : i64
    %43 = llvm.sub %41, %42  : i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr<i32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %46 = llvm.insertvalue %37, %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %23, %49[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %24, %50[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %25, %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %26, %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %29, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %26, %55[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %27, %56[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%58 : i64)
  ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb11
    %62 = llvm.icmp "slt" %61, %59 : i64
    llvm.cond_br %62, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%63 : i64)
  ^bb3(%66: i64):  // 2 preds: ^bb2, ^bb10
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%68 : i64)
  ^bb5(%71: i64):  // 2 preds: ^bb4, ^bb9
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%73 : i64)
  ^bb7(%76: i64):  // 2 preds: ^bb6, ^bb8
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %78 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.add %61, %66  : i64
    %80 = llvm.add %79, %71  : i64
    %81 = llvm.add %80, %76  : i64
    %82 = llvm.getelementptr %78[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.load %82 : !llvm.ptr<i32>
    %84 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : index) : i64
    %86 = llvm.mul %61, %85  : i64
    %87 = llvm.mlir.constant(3 : index) : i64
    %88 = llvm.mul %66, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.mlir.constant(3 : index) : i64
    %91 = llvm.mul %71, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.add %92, %76  : i64
    %94 = llvm.getelementptr %84[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %83, %94 : !llvm.ptr<i32>
    %95 = llvm.add %76, %75  : i64
    llvm.br ^bb7(%95 : i64)
  ^bb9:  // pred: ^bb7
    %96 = llvm.add %71, %70  : i64
    llvm.br ^bb5(%96 : i64)
  ^bb10:  // pred: ^bb5
    %97 = llvm.add %66, %65  : i64
    llvm.br ^bb3(%97 : i64)
  ^bb11:  // pred: ^bb3
    %98 = llvm.add %61, %60  : i64
    llvm.br ^bb1(%98 : i64)
  ^bb12:  // pred: ^bb1
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%99 : i64)
  ^bb13(%102: i64):  // 2 preds: ^bb12, ^bb23
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%104 : i64)
  ^bb15(%107: i64):  // 2 preds: ^bb14, ^bb22
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%109 : i64)
  ^bb17(%112: i64):  // 2 preds: ^bb16, ^bb21
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%114 : i64)
  ^bb19(%117: i64):  // 2 preds: ^bb18, ^bb20
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.add %102, %107  : i64
    %123 = llvm.add %122, %112  : i64
    %124 = llvm.add %123, %117  : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(3 : index) : i64
    %129 = llvm.mul %102, %128  : i64
    %130 = llvm.mlir.constant(3 : index) : i64
    %131 = llvm.mul %107, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.mlir.constant(3 : index) : i64
    %134 = llvm.mul %112, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.add %135, %120  : i64
    %137 = llvm.getelementptr %127[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %126, %137 : !llvm.ptr<i32>
    %138 = llvm.add %117, %116  : i64
    llvm.br ^bb19(%138 : i64)
  ^bb21:  // pred: ^bb19
    %139 = llvm.add %112, %111  : i64
    llvm.br ^bb17(%139 : i64)
  ^bb22:  // pred: ^bb17
    %140 = llvm.add %107, %106  : i64
    llvm.br ^bb15(%140 : i64)
  ^bb23:  // pred: ^bb15
    %141 = llvm.add %102, %101  : i64
    llvm.br ^bb13(%141 : i64)
  ^bb24:  // pred: ^bb13
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%142 : i64)
  ^bb25(%145: i64):  // 2 preds: ^bb24, ^bb35
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%147 : i64)
  ^bb27(%150: i64):  // 2 preds: ^bb26, ^bb34
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%152 : i64)
  ^bb29(%155: i64):  // 2 preds: ^bb28, ^bb33
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%157 : i64)
  ^bb31(%160: i64):  // 2 preds: ^bb30, ^bb32
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.add %145, %150  : i64
    %166 = llvm.add %165, %155  : i64
    %167 = llvm.add %166, %160  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %169 = llvm.load %168 : !llvm.ptr<i32>
    %170 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.mlir.constant(3 : index) : i64
    %172 = llvm.mul %145, %171  : i64
    %173 = llvm.mlir.constant(3 : index) : i64
    %174 = llvm.mul %150, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.mlir.constant(3 : index) : i64
    %177 = llvm.mul %155, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.add %178, %163  : i64
    %180 = llvm.getelementptr %170[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %169, %180 : !llvm.ptr<i32>
    %181 = llvm.add %160, %159  : i64
    llvm.br ^bb31(%181 : i64)
  ^bb33:  // pred: ^bb31
    %182 = llvm.add %155, %154  : i64
    llvm.br ^bb29(%182 : i64)
  ^bb34:  // pred: ^bb29
    %183 = llvm.add %150, %149  : i64
    llvm.br ^bb27(%183 : i64)
  ^bb35:  // pred: ^bb27
    %184 = llvm.add %145, %144  : i64
    llvm.br ^bb25(%184 : i64)
  ^bb36:  // pred: ^bb25
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.null : !llvm.ptr<i1>
    %191 = llvm.getelementptr %190[%185] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i1> to i64
    %193 = llvm.mlir.constant(16 : index) : i64
    %194 = llvm.add %192, %193  : i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr<i8>
    %196 = llvm.bitcast %195 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i1> to i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.sub %193, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.urem %200, %193  : i64
    %202 = llvm.sub %200, %201  : i64
    %203 = llvm.inttoptr %202 : i64 to !llvm.ptr<i1>
    %204 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %205 = llvm.insertvalue %196, %204[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %185, %208[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %186, %209[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %187, %210[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %188, %211[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%217 : i64)
  ^bb37(%220: i64):  // 2 preds: ^bb36, ^bb47
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%222 : i64)
  ^bb39(%225: i64):  // 2 preds: ^bb38, ^bb46
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%227 : i64)
  ^bb41(%230: i64):  // 2 preds: ^bb40, ^bb45
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%232 : i64)
  ^bb43(%235: i64):  // 2 preds: ^bb42, ^bb44
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %237 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.add %220, %225  : i64
    %239 = llvm.add %238, %230  : i64
    %240 = llvm.add %239, %235  : i64
    %241 = llvm.getelementptr %237[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.add %220, %225  : i64
    %245 = llvm.add %244, %230  : i64
    %246 = llvm.add %245, %235  : i64
    %247 = llvm.getelementptr %243[%246] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %248 = llvm.load %247 : !llvm.ptr<i32>
    %249 = llvm.icmp "eq" %242, %248 : i32
    %250 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.add %220, %225  : i64
    %252 = llvm.add %251, %230  : i64
    %253 = llvm.add %252, %235  : i64
    %254 = llvm.getelementptr %250[%253] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %249, %254 : !llvm.ptr<i1>
    %255 = llvm.add %235, %234  : i64
    llvm.br ^bb43(%255 : i64)
  ^bb45:  // pred: ^bb43
    %256 = llvm.add %230, %229  : i64
    llvm.br ^bb41(%256 : i64)
  ^bb46:  // pred: ^bb41
    %257 = llvm.add %225, %224  : i64
    llvm.br ^bb39(%257 : i64)
  ^bb47:  // pred: ^bb39
    %258 = llvm.add %220, %219  : i64
    llvm.br ^bb37(%258 : i64)
  ^bb48:  // pred: ^bb37
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.null : !llvm.ptr<f64>
    %265 = llvm.getelementptr %264[%259] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<f64> to i64
    %267 = llvm.mlir.constant(16 : index) : i64
    %268 = llvm.add %266, %267  : i64
    %269 = llvm.call @malloc(%268) : (i64) -> !llvm.ptr<i8>
    %270 = llvm.bitcast %269 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<f64> to i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.sub %267, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.urem %274, %267  : i64
    %276 = llvm.sub %274, %275  : i64
    %277 = llvm.inttoptr %276 : i64 to !llvm.ptr<f64>
    %278 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %279 = llvm.insertvalue %270, %278[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %277, %279[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.insertvalue %281, %280[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %259, %282[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %260, %283[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %261, %284[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %262, %285[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %260, %286[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %261, %287[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %262, %288[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %263, %289[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%291 : i64)
  ^bb49(%294: i64):  // 2 preds: ^bb48, ^bb59
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%296 : i64)
  ^bb51(%299: i64):  // 2 preds: ^bb50, ^bb58
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%301 : i64)
  ^bb53(%304: i64):  // 2 preds: ^bb52, ^bb57
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%306 : i64)
  ^bb55(%309: i64):  // 2 preds: ^bb54, ^bb56
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %311 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.add %294, %299  : i64
    %313 = llvm.add %312, %304  : i64
    %314 = llvm.add %313, %309  : i64
    %315 = llvm.getelementptr %311[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.sitofp %316 : i32 to f64
    %318 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.add %294, %299  : i64
    %320 = llvm.add %319, %304  : i64
    %321 = llvm.add %320, %309  : i64
    %322 = llvm.getelementptr %318[%321] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %317, %322 : !llvm.ptr<f64>
    %323 = llvm.add %309, %308  : i64
    llvm.br ^bb55(%323 : i64)
  ^bb57:  // pred: ^bb55
    %324 = llvm.add %304, %303  : i64
    llvm.br ^bb53(%324 : i64)
  ^bb58:  // pred: ^bb53
    %325 = llvm.add %299, %298  : i64
    llvm.br ^bb51(%325 : i64)
  ^bb59:  // pred: ^bb51
    %326 = llvm.add %294, %293  : i64
    llvm.br ^bb49(%326 : i64)
  ^bb60:  // pred: ^bb49
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<f64>
    %333 = llvm.getelementptr %332[%327] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<f64> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<f64> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<f64>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %327, %350[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %328, %351[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %329, %352[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %330, %353[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(4 : i64) : i64
    %360 = llvm.call @omTensorCreateUntyped(%359) : (i64) -> !llvm.ptr<i8>
    %361 = llvm.mlir.constant(0 : i64) : i64
    %362 = llvm.extractvalue %358[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.bitcast %362 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %364 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.bitcast %364 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%360, %361, %363, %365) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %366 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%360, %366) : (!llvm.ptr<i8>, i64) -> ()
    %367 = llvm.call @omTensorGetShape(%360) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %368 = llvm.call @omTensorGetStrides(%360) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %369 = llvm.mlir.constant(0 : i64) : i64
    %370 = llvm.extractvalue %358[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.getelementptr %367[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %370, %371 : !llvm.ptr<i64>
    %372 = llvm.extractvalue %358[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.getelementptr %368[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %372, %373 : !llvm.ptr<i64>
    %374 = llvm.mlir.constant(1 : i64) : i64
    %375 = llvm.extractvalue %358[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.getelementptr %367[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %375, %376 : !llvm.ptr<i64>
    %377 = llvm.extractvalue %358[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.getelementptr %368[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %377, %378 : !llvm.ptr<i64>
    %379 = llvm.mlir.constant(2 : i64) : i64
    %380 = llvm.extractvalue %358[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.getelementptr %367[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %380, %381 : !llvm.ptr<i64>
    %382 = llvm.extractvalue %358[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.getelementptr %368[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %382, %383 : !llvm.ptr<i64>
    %384 = llvm.mlir.constant(3 : i64) : i64
    %385 = llvm.extractvalue %358[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.getelementptr %367[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %385, %386 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %358[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.getelementptr %368[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %387, %388 : !llvm.ptr<i64>
    %389 = llvm.mlir.constant(4 : i64) : i64
    %390 = llvm.call @omTensorCreateUntyped(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.mlir.constant(0 : i64) : i64
    %392 = llvm.extractvalue %290[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.bitcast %392 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %394 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.bitcast %394 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%390, %391, %393, %395) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %396 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%390, %396) : (!llvm.ptr<i8>, i64) -> ()
    %397 = llvm.call @omTensorGetShape(%390) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %398 = llvm.call @omTensorGetStrides(%390) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %399 = llvm.mlir.constant(0 : i64) : i64
    %400 = llvm.extractvalue %290[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.getelementptr %397[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %400, %401 : !llvm.ptr<i64>
    %402 = llvm.extractvalue %290[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.getelementptr %398[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %402, %403 : !llvm.ptr<i64>
    %404 = llvm.mlir.constant(1 : i64) : i64
    %405 = llvm.extractvalue %290[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.getelementptr %397[%404] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %405, %406 : !llvm.ptr<i64>
    %407 = llvm.extractvalue %290[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.getelementptr %398[%404] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %407, %408 : !llvm.ptr<i64>
    %409 = llvm.mlir.constant(2 : i64) : i64
    %410 = llvm.extractvalue %290[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.getelementptr %397[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %410, %411 : !llvm.ptr<i64>
    %412 = llvm.extractvalue %290[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.getelementptr %398[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %412, %413 : !llvm.ptr<i64>
    %414 = llvm.mlir.constant(3 : i64) : i64
    %415 = llvm.extractvalue %290[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.getelementptr %397[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %415, %416 : !llvm.ptr<i64>
    %417 = llvm.extractvalue %290[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.getelementptr %398[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %417, %418 : !llvm.ptr<i64>
    %419 = llvm.mlir.constant(1 : i64) : i64
    %420 = llvm.call @omTensorCreateUntyped(%419) : (i64) -> !llvm.ptr<i8>
    %421 = llvm.mlir.constant(0 : i64) : i64
    %422 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.bitcast %422 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %424 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.bitcast %424 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%420, %421, %423, %425) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %426 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%420, %426) : (!llvm.ptr<i8>, i64) -> ()
    %427 = llvm.call @omTensorGetShape(%420) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %428 = llvm.call @omTensorGetStrides(%420) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %429 = llvm.mlir.constant(0 : i64) : i64
    %430 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.getelementptr %427[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %430, %431 : !llvm.ptr<i64>
    %432 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %428[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %432, %433 : !llvm.ptr<i64>
    %434 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %435 = llvm.mlir.constant(0 : i64) : i64
    %436 = llvm.getelementptr %434[%435, %435] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %437 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %438 = llvm.mlir.constant(0 : si64) : i64
    %439 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %440 = llvm.mlir.addressof @om_cubic : !llvm.ptr<array<5 x i8>>
    %441 = llvm.mlir.constant(0 : i64) : i64
    %442 = llvm.getelementptr %440[%441, %441] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %443 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %444 = llvm.mlir.constant(0 : i64) : i64
    %445 = llvm.getelementptr %443[%444, %444] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %446 = llvm.mlir.addressof @"om_/Resize" : !llvm.ptr<array<7 x i8>>
    %447 = llvm.mlir.constant(0 : i64) : i64
    %448 = llvm.getelementptr %446[%447, %447] : (!llvm.ptr<array<7 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%360, %390, %420, %436, %437, %438, %439, %442, %445, %448) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<f64>
    %455 = llvm.getelementptr %454[%449] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<f64> to i64
    %457 = llvm.mlir.constant(16 : index) : i64
    %458 = llvm.add %456, %457  : i64
    %459 = llvm.call @malloc(%458) : (i64) -> !llvm.ptr<i8>
    %460 = llvm.bitcast %459 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<f64> to i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.sub %457, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.urem %464, %457  : i64
    %466 = llvm.sub %464, %465  : i64
    %467 = llvm.inttoptr %466 : i64 to !llvm.ptr<f64>
    %468 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %469 = llvm.insertvalue %460, %468[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %467, %469[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.insertvalue %471, %470[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %450, %473[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(4 : i64) : i64
    %482 = llvm.call @omTensorCreateUntyped(%481) : (i64) -> !llvm.ptr<i8>
    %483 = llvm.mlir.constant(0 : i64) : i64
    %484 = llvm.extractvalue %480[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.bitcast %484 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %486 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.bitcast %486 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%482, %483, %485, %487) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %488 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%482, %488) : (!llvm.ptr<i8>, i64) -> ()
    %489 = llvm.call @omTensorGetShape(%482) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %490 = llvm.call @omTensorGetStrides(%482) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %491 = llvm.mlir.constant(0 : i64) : i64
    %492 = llvm.extractvalue %480[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.getelementptr %489[%491] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %492, %493 : !llvm.ptr<i64>
    %494 = llvm.extractvalue %480[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.getelementptr %490[%491] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %494, %495 : !llvm.ptr<i64>
    %496 = llvm.mlir.constant(1 : i64) : i64
    %497 = llvm.extractvalue %480[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.getelementptr %489[%496] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %497, %498 : !llvm.ptr<i64>
    %499 = llvm.extractvalue %480[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.getelementptr %490[%496] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %499, %500 : !llvm.ptr<i64>
    %501 = llvm.mlir.constant(2 : i64) : i64
    %502 = llvm.extractvalue %480[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.getelementptr %489[%501] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %502, %503 : !llvm.ptr<i64>
    %504 = llvm.extractvalue %480[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.getelementptr %490[%501] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %504, %505 : !llvm.ptr<i64>
    %506 = llvm.mlir.constant(3 : i64) : i64
    %507 = llvm.extractvalue %480[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.getelementptr %489[%506] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %507, %508 : !llvm.ptr<i64>
    %509 = llvm.extractvalue %480[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.getelementptr %490[%506] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %509, %510 : !llvm.ptr<i64>
    %511 = llvm.mlir.constant(4 : i64) : i64
    %512 = llvm.call @omTensorCreateUntyped(%511) : (i64) -> !llvm.ptr<i8>
    %513 = llvm.mlir.constant(0 : i64) : i64
    %514 = llvm.extractvalue %358[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.bitcast %514 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %516 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.bitcast %516 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%512, %513, %515, %517) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %518 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%512, %518) : (!llvm.ptr<i8>, i64) -> ()
    %519 = llvm.call @omTensorGetShape(%512) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %520 = llvm.call @omTensorGetStrides(%512) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %521 = llvm.mlir.constant(0 : i64) : i64
    %522 = llvm.extractvalue %358[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.getelementptr %519[%521] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %522, %523 : !llvm.ptr<i64>
    %524 = llvm.extractvalue %358[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.getelementptr %520[%521] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %524, %525 : !llvm.ptr<i64>
    %526 = llvm.mlir.constant(1 : i64) : i64
    %527 = llvm.extractvalue %358[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.getelementptr %519[%526] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %527, %528 : !llvm.ptr<i64>
    %529 = llvm.extractvalue %358[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.getelementptr %520[%526] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %529, %530 : !llvm.ptr<i64>
    %531 = llvm.mlir.constant(2 : i64) : i64
    %532 = llvm.extractvalue %358[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.getelementptr %519[%531] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %532, %533 : !llvm.ptr<i64>
    %534 = llvm.extractvalue %358[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.getelementptr %520[%531] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %534, %535 : !llvm.ptr<i64>
    %536 = llvm.mlir.constant(3 : i64) : i64
    %537 = llvm.extractvalue %358[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.getelementptr %519[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %537, %538 : !llvm.ptr<i64>
    %539 = llvm.extractvalue %358[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.getelementptr %520[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %539, %540 : !llvm.ptr<i64>
    %541 = llvm.mlir.constant(1 : i64) : i64
    %542 = llvm.call @omTensorCreateUntyped(%541) : (i64) -> !llvm.ptr<i8>
    %543 = llvm.mlir.constant(0 : i64) : i64
    %544 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %545 = llvm.bitcast %544 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %546 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.bitcast %546 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%542, %543, %545, %547) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %548 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%542, %548) : (!llvm.ptr<i8>, i64) -> ()
    %549 = llvm.call @omTensorGetShape(%542) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %550 = llvm.call @omTensorGetStrides(%542) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %551 = llvm.mlir.constant(0 : i64) : i64
    %552 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.getelementptr %549[%551] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %552, %553 : !llvm.ptr<i64>
    %554 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %555 = llvm.getelementptr %550[%551] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %554, %555 : !llvm.ptr<i64>
    %556 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %557 = llvm.mlir.constant(0 : i64) : i64
    %558 = llvm.getelementptr %556[%557, %557] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %559 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %560 = llvm.mlir.constant(0 : si64) : i64
    %561 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %562 = llvm.mlir.addressof @om_cubic : !llvm.ptr<array<5 x i8>>
    %563 = llvm.mlir.constant(0 : i64) : i64
    %564 = llvm.getelementptr %562[%563, %563] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %565 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %566 = llvm.mlir.constant(0 : i64) : i64
    %567 = llvm.getelementptr %565[%566, %566] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %568 = llvm.mlir.addressof @"om_/Resize_1" : !llvm.ptr<array<9 x i8>>
    %569 = llvm.mlir.constant(0 : i64) : i64
    %570 = llvm.getelementptr %568[%569, %569] : (!llvm.ptr<array<9 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%482, %512, %542, %558, %559, %560, %561, %564, %567, %570) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %571 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %572 = llvm.insertvalue %57, %571[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %573 = llvm.insertvalue %216, %572[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %574 = llvm.insertvalue %480, %573[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %574 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

