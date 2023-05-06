module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.null : !llvm.ptr<i32>
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i32> to i64
    %51 = llvm.mlir.constant(16 : index) : i64
    %52 = llvm.add %50, %51  : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.bitcast %53 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %51, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.urem %58, %51  : i64
    %60 = llvm.sub %58, %59  : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %43, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %44, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %45, %68[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %44, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%75 : i64)
  ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb11
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%80 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb10
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%85 : i64)
  ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb9
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%90 : i64)
  ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb8
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %95 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.add %78, %83  : i64
    %97 = llvm.add %96, %88  : i64
    %98 = llvm.add %97, %93  : i64
    %99 = llvm.getelementptr %95[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.load %99 : !llvm.ptr<i32>
    %101 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.add %78, %83  : i64
    %103 = llvm.add %102, %88  : i64
    %104 = llvm.add %103, %93  : i64
    %105 = llvm.getelementptr %101[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %100, %105 : !llvm.ptr<i32>
    %106 = llvm.add %93, %92  : i64
    llvm.br ^bb7(%106 : i64)
  ^bb9:  // pred: ^bb7
    %107 = llvm.add %88, %87  : i64
    llvm.br ^bb5(%107 : i64)
  ^bb10:  // pred: ^bb5
    %108 = llvm.add %83, %82  : i64
    llvm.br ^bb3(%108 : i64)
  ^bb11:  // pred: ^bb3
    %109 = llvm.add %78, %77  : i64
    llvm.br ^bb1(%109 : i64)
  ^bb12:  // pred: ^bb1
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i64>
    %116 = llvm.getelementptr %115[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i64> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i64> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i64>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %110, %133[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %111, %134[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %112, %135[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %113, %136[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%142 : i64)
  ^bb13(%145: i64):  // 2 preds: ^bb12, ^bb23
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%147 : i64)
  ^bb15(%150: i64):  // 2 preds: ^bb14, ^bb22
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%152 : i64)
  ^bb17(%155: i64):  // 2 preds: ^bb16, ^bb21
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%157 : i64)
  ^bb19(%160: i64):  // 2 preds: ^bb18, ^bb20
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %162 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.add %145, %150  : i64
    %164 = llvm.add %163, %155  : i64
    %165 = llvm.add %164, %160  : i64
    %166 = llvm.getelementptr %162[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %167 = llvm.load %166 : !llvm.ptr<i32>
    %168 = llvm.sext %167 : i32 to i64
    %169 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.add %145, %150  : i64
    %171 = llvm.add %170, %155  : i64
    %172 = llvm.add %171, %160  : i64
    %173 = llvm.getelementptr %169[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %173 : !llvm.ptr<i64>
    %174 = llvm.add %160, %159  : i64
    llvm.br ^bb19(%174 : i64)
  ^bb21:  // pred: ^bb19
    %175 = llvm.add %155, %154  : i64
    llvm.br ^bb17(%175 : i64)
  ^bb22:  // pred: ^bb17
    %176 = llvm.add %150, %149  : i64
    llvm.br ^bb15(%176 : i64)
  ^bb23:  // pred: ^bb15
    %177 = llvm.add %145, %144  : i64
    llvm.br ^bb13(%177 : i64)
  ^bb24:  // pred: ^bb13
    %178 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %179 = llvm.extractvalue %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %179, %178[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %180, %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.insertvalue %185, %184[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.insertvalue %187, %186[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.insertvalue %189, %188[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.insertvalue %191, %190[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.insertvalue %193, %192[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.insertvalue %195, %194[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.insertvalue %197, %196[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.insertvalue %199, %198[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.null : !llvm.ptr<i64>
    %204 = llvm.getelementptr %203[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i64> to i64
    %206 = llvm.mlir.constant(16 : index) : i64
    %207 = llvm.add %205, %206  : i64
    %208 = llvm.call @malloc(%207) : (i64) -> !llvm.ptr<i8>
    %209 = llvm.bitcast %208 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<i64> to i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.sub %206, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.urem %213, %206  : i64
    %215 = llvm.sub %213, %214  : i64
    %216 = llvm.inttoptr %215 : i64 to !llvm.ptr<i64>
    %217 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %218 = llvm.insertvalue %209, %217[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %201, %221[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %202, %222[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(4 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%224 : i64)
  ^bb25(%227: i64):  // 2 preds: ^bb24, ^bb26
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %229 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %230 : !llvm.ptr<i64>
    %231 = llvm.add %227, %226  : i64
    llvm.br ^bb25(%231 : i64)
  ^bb27:  // pred: ^bb25
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.null : !llvm.ptr<i64>
    %235 = llvm.getelementptr %234[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i64> to i64
    %237 = llvm.mlir.constant(16 : index) : i64
    %238 = llvm.add %236, %237  : i64
    %239 = llvm.call @malloc(%238) : (i64) -> !llvm.ptr<i8>
    %240 = llvm.bitcast %239 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i64> to i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.sub %237, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.urem %244, %237  : i64
    %246 = llvm.sub %244, %245  : i64
    %247 = llvm.inttoptr %246 : i64 to !llvm.ptr<i64>
    %248 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %249 = llvm.insertvalue %240, %248[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %247, %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.insertvalue %251, %250[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %232, %252[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%255 : i64)
  ^bb28(%258: i64):  // 2 preds: ^bb27, ^bb29
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %260 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %262 = llvm.load %261 : !llvm.ptr<i64>
    %263 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.mul %262, %264  : i64
    %266 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %265, %267 : !llvm.ptr<i64>
    %268 = llvm.add %258, %257  : i64
    llvm.br ^bb28(%268 : i64)
  ^bb30:  // pred: ^bb28
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.null : !llvm.ptr<i1>
    %272 = llvm.getelementptr %271[%269] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i1> to i64
    %274 = llvm.mlir.constant(16 : index) : i64
    %275 = llvm.add %273, %274  : i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr<i8>
    %277 = llvm.bitcast %276 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i1> to i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.sub %274, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.urem %281, %274  : i64
    %283 = llvm.sub %281, %282  : i64
    %284 = llvm.inttoptr %283 : i64 to !llvm.ptr<i1>
    %285 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %286 = llvm.insertvalue %277, %285[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %284, %286[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.insertvalue %288, %287[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %270, %290[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%292 : i64)
  ^bb31(%295: i64):  // 2 preds: ^bb30, ^bb32
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %297 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.getelementptr %297[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %299 = llvm.load %298 : !llvm.ptr<i64>
    %300 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.load %301 : !llvm.ptr<i64>
    %303 = llvm.icmp "eq" %299, %302 : i64
    %304 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%295] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %303, %305 : !llvm.ptr<i1>
    %306 = llvm.add %295, %294  : i64
    llvm.br ^bb31(%306 : i64)
  ^bb33:  // pred: ^bb31
    %307 = llvm.mlir.constant(4 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.null : !llvm.ptr<i64>
    %310 = llvm.getelementptr %309[%307] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(16 : index) : i64
    %313 = llvm.add %311, %312  : i64
    %314 = llvm.call @malloc(%313) : (i64) -> !llvm.ptr<i8>
    %315 = llvm.bitcast %314 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i64> to i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.sub %312, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.urem %319, %312  : i64
    %321 = llvm.sub %319, %320  : i64
    %322 = llvm.inttoptr %321 : i64 to !llvm.ptr<i64>
    %323 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %324 = llvm.insertvalue %315, %323[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %322, %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.insertvalue %326, %325[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.insertvalue %307, %327[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.insertvalue %308, %328[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%330 : i64)
  ^bb34(%333: i64):  // 2 preds: ^bb33, ^bb35
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %335 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.getelementptr %335[%333] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %337 = llvm.load %336 : !llvm.ptr<i1>
    %338 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.getelementptr %338[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.load %339 : !llvm.ptr<i64>
    %341 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.getelementptr %341[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.load %342 : !llvm.ptr<i64>
    %344 = llvm.select %337, %340, %343 : i1, i64
    %345 = llvm.extractvalue %329[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.getelementptr %345[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %344, %346 : !llvm.ptr<i64>
    %347 = llvm.add %333, %332  : i64
    llvm.br ^bb34(%347 : i64)
  ^bb36:  // pred: ^bb34
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.null : !llvm.ptr<i32>
    %354 = llvm.getelementptr %353[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i32> to i64
    %356 = llvm.mlir.constant(16 : index) : i64
    %357 = llvm.add %355, %356  : i64
    %358 = llvm.call @malloc(%357) : (i64) -> !llvm.ptr<i8>
    %359 = llvm.bitcast %358 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i32> to i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.sub %356, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.urem %363, %356  : i64
    %365 = llvm.sub %363, %364  : i64
    %366 = llvm.inttoptr %365 : i64 to !llvm.ptr<i32>
    %367 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %368 = llvm.insertvalue %359, %367[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %366, %368[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.insertvalue %370, %369[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %348, %371[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %349, %372[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %350, %373[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %351, %374[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %351, %377[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %352, %378[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%380 : i64)
  ^bb37(%383: i64):  // 2 preds: ^bb36, ^bb47
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%385 : i64)
  ^bb39(%388: i64):  // 2 preds: ^bb38, ^bb46
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%390 : i64)
  ^bb41(%393: i64):  // 2 preds: ^bb40, ^bb45
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%395 : i64)
  ^bb43(%398: i64):  // 2 preds: ^bb42, ^bb44
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %400 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.add %13, %13  : i64
    %402 = llvm.add %401, %13  : i64
    %403 = llvm.add %402, %13  : i64
    %404 = llvm.getelementptr %400[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.load %404 : !llvm.ptr<i32>
    %406 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.add %383, %388  : i64
    %408 = llvm.add %407, %393  : i64
    %409 = llvm.add %408, %398  : i64
    %410 = llvm.getelementptr %406[%409] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %405, %410 : !llvm.ptr<i32>
    %411 = llvm.add %398, %397  : i64
    llvm.br ^bb43(%411 : i64)
  ^bb45:  // pred: ^bb43
    %412 = llvm.add %393, %392  : i64
    llvm.br ^bb41(%412 : i64)
  ^bb46:  // pred: ^bb41
    %413 = llvm.add %388, %387  : i64
    llvm.br ^bb39(%413 : i64)
  ^bb47:  // pred: ^bb39
    %414 = llvm.add %383, %382  : i64
    llvm.br ^bb37(%414 : i64)
  ^bb48:  // pred: ^bb37
    %415 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %416 = llvm.extractvalue %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %416, %415[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %417, %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.insertvalue %420, %419[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.insertvalue %422, %421[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.insertvalue %424, %423[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.insertvalue %426, %425[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.insertvalue %428, %427[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.insertvalue %430, %429[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.insertvalue %432, %431[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.insertvalue %434, %433[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.insertvalue %436, %435[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %439 = llvm.insertvalue %141, %438[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %440 = llvm.insertvalue %379, %439[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %441 = llvm.insertvalue %437, %440[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %441 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

